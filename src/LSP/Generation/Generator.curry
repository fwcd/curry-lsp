module LSP.Generation.Generator
  ( metaModelToPrettyProgs
  ) where

import Control.Monad ( join )
import Control.Monad.Trans.Reader ( Reader, runReader, asks )
import qualified Data.Map as M
import qualified Data.Set as S
import Data.List ( intercalate )
import Data.Maybe ( fromMaybe, maybeToList, catMaybes )
import JSON.Data ( JValue (..) )
import JSON.Pretty ( ppJSON )
import qualified LSP.Generation.AbstractCurry.Types as AC
import qualified LSP.Generation.AbstractCurry.Select as ACS
import qualified LSP.Generation.AbstractCurry.Build as ACB
import qualified LSP.Generation.AbstractCurry.Pretty as ACP
import LSP.Generation.Deps
import LSP.Generation.Model
import LSP.Utils.General ( capitalize, uncapitalize, replaceSingle, (<$.>), (<<$>>), unions, unionMap, keyOn )

-- TODO: Generate documentation
-- See https://git.ps.informatik.uni-kiel.de/curry-packages/abstract-curry/-/issues/1

-- | Internal (read-only) generator environment.
data GeneratorEnv = GeneratorEnv
  { geMetaStructures :: M.Map String MetaStructure
  , geModulePrefix :: String
  , geBuiltInTypeAliases :: M.Map String AC.QName
  , geStandardDerivings :: [AC.QName]
  , geStandardEnumDerivings :: [AC.QName]
  }

type GM = Reader GeneratorEnv

-- | Creates the generator environment.
generatorEnv :: String -> MetaModel -> GeneratorEnv
generatorEnv mprefix m = GeneratorEnv
  { geMetaStructures = M.fromList $ keyOn msName <$> mmStructures m
  , geModulePrefix = mprefix
  , geBuiltInTypeAliases = M.fromList
    [ ("LSPAny", support "LSPAny")
    ]
  , geStandardDerivings =
    [ AC.pre "Show"
    , AC.pre "Eq"
    ]
  , geStandardEnumDerivings =
    [ AC.pre "Enum"
    , AC.pre "Bounded"
    , AC.pre "Ord"
    ]
  }

-- | Runs the generator monad.
runGM :: GM a -> String -> MetaModel -> a
runGM x = runReader x <<$>> generatorEnv

-- | Converts a meta structure to prettyprinted Curry programs, keyed by module name.
metaModelToPrettyProgs :: String -> MetaModel -> [(String, String)]
metaModelToPrettyProgs mprefix m = pretty <$.> progs
  where
    progs = runGM (metaModelToProgs m) mprefix m
    pretty prog = unlines [pragmas, body]
      where
        -- Disable qualification since instances are not generated correctly
        -- when using qualified identifiers. We just have to make sure to include
        -- all of the required imports (and make sure that no LSP identifiers
        -- conflict with our supporting types).
        ppOpts = ACP.setNoQualification ACP.defaultOptions
        -- TODO: We currently disable overlapping pattern warnings since some
        --       LSP error codes cannot be parsed unambiguously currently. A
        --       better solution would be to explicitly only generate one of
        --       the cases or add a more specific flag to the frontend for only
        --       disabling unreachable pattern warnings (not overlapping).
        pragmas = "{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}"
        body = ACP.prettyCurryProg ppOpts prog

-- | Converts a meta structure to a Curry program.
metaModelToProgs :: MetaModel -> GM [(String, AC.CurryProg)]
metaModelToProgs m = do
  structs <- mapM metaStructureToProg (mmStructures m)
  enums <- mapM metaEnumerationToProg (mmEnumerations m)
  aliases <- catMaybes <$> mapM metaAliasToProg (mmTypeAliases m)
  mprefix <- asks geModulePrefix
  let progs = structs ++ enums ++ aliases
      umbrella = mkUmbrellaProg mprefix (ACS.progName <$> progs)
  return $ keyOn ACS.progName <$> (umbrella : progs)

-- | Generates an umbrella module that reexports the given modules.
mkUmbrellaProg :: String -> [String] -> AC.CurryProg
mkUmbrellaProg mname mods = AC.CurryProg mname mods mods Nothing [] [] [] [] []

-- | Converts a meta structure to a Curry program.
metaStructureToProg :: MetaStructure -> GM AC.CurryProg
metaStructureToProg s = do
  mprefix <- asks geModulePrefix
  structs <- asks geMetaStructures
  let s' = flattenMetaStructure structs s
      name = escapeName $ msName s'
      mname = qualWith mprefix name
      qn = (mname, name)
      props = msProperties s'
      vis = AC.Public
  fs <- mapM (metaPropertyToField mname name) props
  derivs <- asks geStandardDerivings
  fromJSONInst <- flatMetaStructureToFromJSONInstance mname name s'
  toJSONInst <- flatMetaStructureToToJSONInstance mname name s'
  defaultInst <- flatMetaStructureToDefaultInstance mname name s'
  let cdecl = AC.CRecord qn vis fs
      ty = AC.CType qn vis [] [cdecl] derivs
      insts = [fromJSONInst, toJSONInst, defaultInst]
      imps = requiredImports mname $ S.union (typeDeclModuleDeps ty) (unionMap instanceDeclModuleDeps insts)
  return $ AC.CurryProg mname [] imps Nothing [] insts [ty] [] []

-- | Converts a meta enumeration to a Curry program.
metaEnumerationToProg :: MetaEnumeration -> GM AC.CurryProg
metaEnumerationToProg e = do
  mprefix <- asks geModulePrefix
  let name = escapeName $ meName e
      mname = qualWith mprefix name
      qn = (mname, name)
      vis = AC.Public
      vals = meValues e
  cdecls <- mapM (metaEnumerationValueToCons mname name) vals
  -- TODO: liftA2 on StateT is broken due to the missing implementation of <*>, causing the program to loop
  -- derivs <- liftA2 (++) (asks geStandardDerivings) (asks geStandardEnumDerivings)
  stdDerivs <- asks geStandardDerivings
  enumDerivs <- asks geStandardEnumDerivings
  fromJSONInst <- metaEnumerationToFromJSONInstance mname name e
  toJSONInst <- metaEnumerationToToJSONInstance mname name e
  defaultInst <- metaEnumerationToDefaultInstance mname name e
  let derivs = stdDerivs ++ enumDerivs
      ty = AC.CType qn vis [] cdecls derivs
      insts = [fromJSONInst, toJSONInst, defaultInst]
      imps = requiredImports mname $ S.union (typeDeclModuleDeps ty) (unionMap instanceDeclModuleDeps insts)
  return $ AC.CurryProg mname [] imps Nothing [] insts [ty] [] []

-- | Converts a flattened meta structure to a FromJSON instance.
flatMetaStructureToFromJSONInstance :: String -> String -> MetaStructure -> GM AC.CInstanceDecl
flatMetaStructureToFromJSONInstance mname prefix s' = do
  let name = escapeName $ msName s'
      qn = (mname, name)
      vis = AC.Public
      texp = ACB.baseType qn
      sig = ACB.emptyClassType $ fromJSONType texp
      jVar = (0, "j")
      vsVar = (1, "vs")
      anonVar = (2, "_")
      propNames = mpName <$> msProperties s'
      fieldVars = zip [3..] $ (("parsed" ++) . capitalize) <$> propNames
      fieldStmts = zipWith (\v p -> AC.CSPat (AC.CPVar v) $ ACB.applyF (lookupFromJSONForMetaProperty p) [ACB.string2ac $ mpName p, AC.CVar vsVar]) fieldVars $ msProperties s'
      fields = zip (((,) mname . fieldName prefix) <$> propNames) $ AC.CVar <$> fieldVars
      stmts = fieldStmts ++ [AC.CSExpr $ ACB.applyF (AC.pre "return") [AC.CRecConstr qn fields]]
      errMsg = ACB.applyF (AC.pre "++") [ACB.string2ac $ "Unrecognized " ++ name ++ " value: ", ACB.applyF ppJSONQName [AC.CVar jVar]]
      arms =
        [ -- Match a JObject
          (AC.CPComb jObjectQName [AC.CPVar vsVar]
          , AC.CSimpleRhs (AC.CDoExpr stmts) []
          )
          -- For any other JValue, return an error message
        , (AC.CPVar anonVar
          , AC.CSimpleRhs (ACB.applyF (AC.pre "Left") [errMsg]) []
          )
        ]
      expr = AC.CCase AC.CRigid (AC.CVar jVar) arms
      rule = AC.CRule [AC.CPVar jVar] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc fromJSONQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance fromJSONClassQName (AC.CContext []) texp fdecls

-- | Converts a flattened meta structure to a ToJSON instance.
flatMetaStructureToToJSONInstance :: String -> String -> MetaStructure -> GM AC.CInstanceDecl
flatMetaStructureToToJSONInstance mname prefix s' = do
  let name = escapeName $ msName s'
      qn = (mname, name)
      texp = ACB.baseType qn
      vis = AC.Public
      sig = ACB.emptyClassType $ toJSONType texp
      xVar = (0, "x")
      fieldExprs = [ACB.applyF (kvOperatorForMetaProperty p) [ACB.string2ac (mpName p), ACB.applyF (mname, fieldName prefix (mpName p)) [AC.CVar xVar]] | p <- msProperties s']
      expr = ACB.applyF objectQName [AC.CList fieldExprs]
      rule = AC.CRule [AC.CPVar xVar] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc toJSONQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance toJSONClassQName (AC.CContext []) texp fdecls

-- | Converts a flattened meta structure to a Default instance.
flatMetaStructureToDefaultInstance :: String -> String -> MetaStructure -> GM AC.CInstanceDecl
flatMetaStructureToDefaultInstance mname prefix s' = do
  let name = escapeName $ msName s'
      qn = (mname, name)
      texp = ACB.baseType qn
      vis = AC.Public
      sig = ACB.emptyClassType $ toJSONType texp
      propNames = mpName <$> msProperties s'
      fields = [((mname, fieldName prefix n), AC.CSymbol defQName) | n <- propNames]
      expr = AC.CRecConstr qn fields
      rule = AC.CRule [] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc defQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance defaultClassQName (AC.CContext []) texp fdecls

-- | Picks the correct lookupFromJSON method for the given property.
lookupFromJSONForMetaProperty :: MetaProperty -> AC.QName
lookupFromJSONForMetaProperty p | isOptional = lookupMaybeFromJSONQName
                                | otherwise  = lookupFromJSONQName
  where isOptional = fromMaybe False $ mpOptional p

-- | Picks the correct kv operator for the given property.
kvOperatorForMetaProperty :: MetaProperty -> AC.QName
kvOperatorForMetaProperty p | isOptional = optionalKvOperatorQName
                            | otherwise  = kvOperatorQName
  where isOptional = fromMaybe False $ mpOptional p

-- | Converts a meta enumeration to a FromJSON instance.
metaEnumerationToFromJSONInstance :: String -> String -> MetaEnumeration -> GM AC.CInstanceDecl
metaEnumerationToFromJSONInstance mname prefix e = do
  ty <- metaTypeToTypeExpr $ meType e
  let name = escapeName $ meName e
      qn = (mname, name)
      vis = AC.Public
      texp = ACB.baseType qn
      sig = ACB.emptyClassType $ fromJSONType texp
      jVar = (0, "j")
      rawVar = (1, "raw")
      anonVar = (2, "_")
      errMsg = ACB.applyF (AC.pre "++") [ACB.string2ac $ "Unrecognized " ++ name ++ " value: ", ACB.applyF ppJSONQName [AC.CVar jVar]]
      vals = meValues e
      valLits = metaEnumerationValueToLit . mevValue <$> vals
      valQNames = (,) mname . enumValueName prefix . mevName <$> vals
      valArms = zipWith (\v q -> (AC.CPLit v, AC.CSimpleRhs (ACB.applyF (AC.pre "Right") [AC.CSymbol q]) [])) valLits valQNames
      arms = valArms ++ [(AC.CPVar anonVar, AC.CSimpleRhs (ACB.applyF (AC.pre "Left") [errMsg]) [])]
      rawExpr = ACB.applyF fromJSONQName [AC.CVar jVar]
      rawTy = AC.CQualType (AC.CContext []) ty
      caseExpr = AC.CCase AC.CRigid (AC.CTyped (AC.CVar rawVar) rawTy) arms
      stmts =
        [ -- Parse the base type
          AC.CSPat (AC.CPVar rawVar) rawExpr
          -- Match against the enum values
        , AC.CSExpr caseExpr
        ]
      expr = AC.CDoExpr stmts
      rule = AC.CRule [AC.CPVar jVar] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc fromJSONQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance fromJSONClassQName (AC.CContext []) texp fdecls

-- | Converts a meta enumeration to a ToJSON instance.
metaEnumerationToToJSONInstance :: String -> String -> MetaEnumeration -> GM AC.CInstanceDecl
metaEnumerationToToJSONInstance mname prefix e = do
  let name = escapeName $ meName e
      qn = (mname, name)
      texp = ACB.baseType qn
      vis = AC.Public
      sig = ACB.emptyClassType $ toJSONType texp
      xVar = (0, "x")
      vals = meValues e
      valLits = metaEnumerationValueToLit . mevValue <$> vals
      valLitExprs = AC.CLit <$> valLits
      valQNames = (,) mname . enumValueName prefix . mevName <$> vals
      arms = zipWith (\q v -> (AC.CPComb q [], AC.CSimpleRhs (ACB.applyF toJSONQName [v]) [])) valQNames valLitExprs
      expr = AC.CCase AC.CRigid (AC.CVar xVar) arms
      rule = AC.CRule [AC.CPVar xVar] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc toJSONQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance toJSONClassQName (AC.CContext []) texp fdecls

-- | Converts a meta enumeration to a Default instance.
metaEnumerationToDefaultInstance :: String -> String -> MetaEnumeration -> GM AC.CInstanceDecl
metaEnumerationToDefaultInstance mname prefix e = do
  let name = escapeName $ meName e
      qn = (mname, name)
      texp = ACB.baseType qn
      vis = AC.Public
      sig = ACB.emptyClassType $ toJSONType texp
      -- TODO: Throw an error if we encounter an empty enumeration (instead of just using head)?
      defVal = (,) mname . enumValueName prefix . mevName . head $ meValues e
      expr = AC.CSymbol defVal
      rule = AC.CRule [] (AC.CSimpleRhs expr [])
      fdecl = AC.CFunc defQName 1 vis sig [rule]
      fdecls = [fdecl]
  return $ AC.CInstance defaultClassQName (AC.CContext []) texp fdecls

-- | Converts a meta enumeration value to a Curry literal.
metaEnumerationValueToLit :: JValue -> AC.CLiteral
metaEnumerationValueToLit j = case j of
  JString s -> AC.CStringc s
  JNumber f -> AC.CIntc $ round f
  _         -> error $ "Unrepresentable enum value: " ++ ppJSON j

-- | Converts a meta enumeration value to a Curry constructor.
metaEnumerationValueToCons :: String -> String -> MetaEnumerationValue -> GM AC.CConsDecl
metaEnumerationValueToCons mname prefix v = do
  let name = enumValueName prefix (mevName v)
      qn = (mname, name)
      vis = AC.Public
  return $ AC.CCons qn vis []

-- | Converts a meta type alias to a Curry program.
metaAliasToProg :: MetaTypeAlias -> GM (Maybe AC.CurryProg)
metaAliasToProg a = do
  mprefix <- asks geModulePrefix
  let name = escapeName $ mtaName a
      mname = qualWith mprefix name
      qn = (mname, name)
      vis = AC.Public
  texp <- metaTypeToTypeExpr $ mtaType a
  btas <- asks geBuiltInTypeAliases
  let maybeTy = case M.lookup name btas of
        Just _  -> Nothing -- Skip built-in type aliases (e.g. LSPAny)
        Nothing -> Just $ AC.CTypeSyn qn vis [] texp
      imps = requiredImports mname $ unions $ typeDeclModuleDeps <$> maybeToList maybeTy
  return $ (\ty -> AC.CurryProg mname [] imps Nothing [] [] [ty] [] []) <$> maybeTy

-- | Converts a meta property to a Curry record field declaration.
metaPropertyToField :: String -> String -> MetaProperty -> GM AC.CFieldDecl
metaPropertyToField mname prefix p = do
  let qn = (mname, fieldName prefix (mpName p))
      vis = AC.Public
  texp <- maybeTypeExprIf (fromMaybe False (mpOptional p)) <$> metaTypeToTypeExpr (mpType p)
  return $ AC.CField qn vis texp

-- | Wraps a type expression in a Maybe if the given flag is set.
maybeTypeExprIf :: Bool -> AC.CTypeExpr -> AC.CTypeExpr
maybeTypeExprIf False = id
maybeTypeExprIf True = ACB.maybeType

-- | Converts a meta type to a Curry type expression.
metaTypeToTypeExpr :: MetaType -> GM AC.CTypeExpr
metaTypeToTypeExpr t = do
  mprefix <- asks geModulePrefix
  case t of
    MetaTypeReference n     -> do btas <- asks geBuiltInTypeAliases
                                  return $ ACB.baseType $ fromMaybe (mkQName mprefix n) $ M.lookup n btas
    MetaTypeArray a         -> ACB.listType <$> metaTypeToTypeExpr a
    MetaTypeMap k e         -> ACB.applyTC ("Data.Map", "Map") <$> mapM metaTypeToTypeExpr [k, e]
    MetaTypeBase b          -> return $ metaBaseTypeToTypeExpr b
    MetaTypeOr is           -> foldl1 (\x y -> ACB.applyTC (AC.pre "Either") [x, y]) <$> mapM metaTypeToTypeExpr is
    MetaTypeAnd is          -> ACB.tupleType <$> mapM metaTypeToTypeExpr is
    -- TODO: Find a better representation for string literal types?
    -- We should probably rewrite or-ed string literal types to algebraic data types!
    MetaTypeStringLiteral _ -> return ACB.stringType
    MetaTypeTuple is        -> ACB.tupleType <$> mapM metaTypeToTypeExpr is
    MetaTypeLiteral _       -> return ACB.unitType -- TODO

-- | Converts a meta base type to a Curry type expression.
metaBaseTypeToTypeExpr :: MetaBaseType -> AC.CTypeExpr
metaBaseTypeToTypeExpr b = case b of
  MetaBaseTypeString      -> ACB.stringType
  MetaBaseTypeBoolean     -> ACB.boolType
  MetaBaseTypeInteger     -> ACB.intType
  MetaBaseTypeUInteger    -> ACB.intType
  MetaBaseTypeDecimal     -> ACB.floatType
  -- TODO: We should probably be clever about this and rewrite e.g. 'or-null' types to maybes
  MetaBaseTypeNull        -> ACB.unitType
  MetaBaseTypeDocumentUri -> ACB.baseType $ support "DocumentUri"
  MetaBaseTypeUri         -> ACB.baseType $ support "Uri"

-- | Orders and filters out the required imports for the given module.
requiredImports :: String -> S.Set String -> [String]
requiredImports mname = filter isRequired . S.toList
  where isRequired m = m /= AC.preludeName && m /= mname

-- | Extracts the name from a type declaration.
typeName :: AC.CTypeDecl -> String
typeName ty = snd $ case ty of
  AC.CType    n _ _ _ _ -> n
  AC.CTypeSyn n _ _ _   -> n
  AC.CNewType n _ _ _ _ -> n

-- | An identifier from the LSP.Protocol.Support module.
support :: String -> AC.QName
support n = ("LSP.Protocol.Support", n)

-- | The FromJSON type class name.
fromJSONClassQName :: AC.QName
fromJSONClassQName = ("LSP.Utils.JSON", "FromJSON")

-- | The ToJSON type class name.
toJSONClassQName :: AC.QName
toJSONClassQName = ("LSP.Utils.JSON", "ToJSON")

-- | The Default type class name.
defaultClassQName :: AC.QName
defaultClassQName = ("LSP.Utils.Default", "Default")

-- | The Prelude.Either type.
eitherType :: AC.CTypeExpr -> AC.CTypeExpr -> AC.CTypeExpr
eitherType x y = ACB.applyTC (AC.pre "Either") [x, y]

-- | The JValue qualified name.
jValueQName :: AC.QName
jValueQName = ("JSON.Data", "JValue")

-- | The JObject qualified name.
jObjectQName :: AC.QName
jObjectQName = ("JSON.Data", "JObject")

-- | The def method qualified name.
defQName :: AC.QName
defQName = ("LSP.Utils.Default", "def")

-- | The fromJSON function type expr with the given result type.
fromJSONType :: AC.CTypeExpr -> AC.CTypeExpr
fromJSONType ty = AC.CFuncType (ACB.baseType jValueQName) (eitherType ACB.stringType ty)

-- | The toJSON function type expr with the given result type.
toJSONType :: AC.CTypeExpr -> AC.CTypeExpr
toJSONType ty = AC.CFuncType ty (ACB.baseType jValueQName)

-- | The fromJSON function name.
fromJSONQName :: AC.QName
fromJSONQName = ("LSP.Utils.JSON", "fromJSON")

-- | The toJSON function name.
toJSONQName :: AC.QName
toJSONQName = ("LSP.Utils.JSON", "toJSON")

-- | The lookupFromJSON function name.
lookupFromJSONQName :: AC.QName
lookupFromJSONQName = ("LSP.Utils.JSON", "lookupFromJSON")

-- | The lookupMaybeFromJSON function name.
lookupMaybeFromJSONQName :: AC.QName
lookupMaybeFromJSONQName = ("LSP.Utils.JSON", "lookupMaybeFromJSON")

-- | The object function name.
objectQName :: AC.QName
objectQName = ("LSP.Utils.JSON", "object")

-- | The key value operator name.
kvOperatorQName :: AC.QName
kvOperatorQName = ("LSP.Utils.JSON", "(.=)")

-- | The optional key value operator name.
optionalKvOperatorQName :: AC.QName
optionalKvOperatorQName = ("LSP.Utils.JSON", "(.?=)")

-- | The ppJSON function name.
ppJSONQName :: AC.QName
ppJSONQName = ("JSON.Pretty", "ppJSON")

-- | Generates a prefixed enum value name.
enumValueName :: String -> String -> String
enumValueName prefix name = capitalize prefix ++ capitalize name

-- | Generates a field name.
fieldName :: String -> String -> String
fieldName prefix name = uncapitalize prefix ++ capitalize name

-- | Escapes a type name for use in Curry (e.g. replacing underscores with 'Base').
escapeName :: String -> String
escapeName = replaceSingle '_' "Base"

-- | Qualifies the given name with the given prefix.
qualWith :: String -> String -> String
qualWith prefix name = prefix ++ "." ++ name

-- | Creates a QName with the derived module name.
mkQName :: String -> String -> AC.QName
mkQName mprefix n = (qualWith mprefix n, n)
