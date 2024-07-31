module LSP.Generation.Generator
  ( metaModelToPrettyProgs
  ) where

import qualified AbstractCurry.Types as AC
import qualified AbstractCurry.Build as ACB
import qualified AbstractCurry.Pretty as ACP
import Control.Monad ( join )
import Control.Monad.Trans.State ( State, evalState, gets )
import qualified Data.Map as M
import Data.Maybe ( fromMaybe, maybeToList, catMaybes )
import JSON.Data ( JValue (..) )
import JSON.Pretty ( ppJSON )
import LSP.Generation.Model
import LSP.Utils.General ( capitalize, uncapitalize, replaceSingle, (<$.>) )

-- TODO: Generate documentation
-- See https://git.ps.informatik.uni-kiel.de/curry-packages/abstract-curry/-/issues/1

-- | Internal generator state.
data GeneratorState = GeneratorState
  { gsStructMap :: M.Map String MetaStructure
  , gsBuiltInTypeAliases :: M.Map String AC.QName
  , gsStandardDerivings :: [AC.QName]
  , gsStandardEnumDerivings :: [AC.QName]
  }

type GM = State GeneratorState

-- | Creates the initial generator state.
initialGeneratorState :: MetaModel -> GeneratorState
initialGeneratorState m = GeneratorState
  { gsStructMap = M.fromList $ (\s -> (escapeName (msName s), s)) <$> mmStructures m
  , gsBuiltInTypeAliases = M.fromList
    [ ("LSPAny", support "LSPAny")
    ]
  , gsStandardDerivings =
    [ AC.pre "Show"
    , AC.pre "Eq"
    ]
  , gsStandardEnumDerivings =
    [ AC.pre "Enum"
    , AC.pre "Bounded"
    , AC.pre "Ord"
    ]
  }

-- | Converts a meta structure to prettyprinted Curry programs, keyed by module.
metaModelToPrettyProgs :: String -> MetaModel -> [(String, String)]
metaModelToPrettyProgs prefix m = prettyWithModuleName <$> progs
  where
    st = initialGeneratorState m
    progs = evalState (metaModelToProgs prefix m) st
    prettyWithModuleName prog@(AC.CurryProg name _ _ _ _ _ _ _) = (name, unlines [pragmas, body])
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
metaModelToProgs :: String -> MetaModel -> GM [AC.CurryProg]
metaModelToProgs prefix m = do
  let imps = ["LSP.Utils.JSON", "LSP.Protocol.Support", "Data.Map", "JSON.Data", "JSON.Pretty"]
  structs <- mapM metaStructureToType (mmStructures m)
  enums <- mapM metaEnumerationToType (mmEnumerations m)
  aliases <- map (\a -> (a, [])) . catMaybes <$> mapM metaAliasToAlias (mmTypeAliases m)
  let tysWithInsts = structs ++ enums ++ aliases
  return $ (\(ty, insts) -> AC.CurryProg (prefix ++ "." ++ tyName ty) imps Nothing [] insts [ty] [] []) <$> tysWithInsts
  where
    tyName :: AC.CTypeDecl -> String
    tyName t = snd $ case t of
      AC.CType n _ _ _ _    -> n
      AC.CTypeSyn n _ _ _   -> n
      AC.CNewType n _ _ _ _ -> n

-- | Converts a meta structure to a Curry type declaration (and instances).
metaStructureToType :: MetaStructure -> GM (AC.CTypeDecl, [AC.CInstanceDecl])
metaStructureToType s = do
  let name = escapeName $ msName s
      qn = mkQName name
      props = msProperties s
      vis = AC.Public
  fs <- mapM (metaPropertyToField name) props
  derivs <- gets gsStandardDerivings
  fromJSONInst <- metaStructureToFromJSONInstance name s
  let cdecl = AC.CRecord qn vis fs
      ty = AC.CType qn vis [] [cdecl] derivs
      insts = [fromJSONInst]
  return (ty, insts)

-- | Converts a meta enumeration to a Curry type declaration (and instances).
metaEnumerationToType :: MetaEnumeration -> GM (AC.CTypeDecl, [AC.CInstanceDecl])
metaEnumerationToType e = do
  let name = escapeName $ meName e
      qn = mkQName name
      vis = AC.Public
      vals = meValues e
  cdecls <- mapM (metaEnumerationValueToCons name) vals
  -- TODO: liftA2 on StateT is broken due to the missing implementation of <*>, causing the program to loop
  -- derivs <- liftA2 (++) (gets gsStandardDerivings) (gets gsStandardEnumDerivings)
  stdDerivs <- gets gsStandardDerivings
  enumDerivs <- gets gsStandardEnumDerivings
  fromJSONInst <- metaEnumerationToFromJSONInstance name e
  let derivs = stdDerivs ++ enumDerivs
      ty = AC.CType qn vis [] cdecls derivs
      insts = [fromJSONInst]
  return (ty, insts)

-- | Converts a meta structure to a FromJSON instance.
metaStructureToFromJSONInstance :: String -> MetaStructure -> GM AC.CInstanceDecl
metaStructureToFromJSONInstance prefix s = do
  let name = escapeName $ msName s
      qn = mkQName name
      ctx = AC.CContext []
      vis = AC.Public
      texp = ACB.baseType qn
      sig = ACB.emptyClassType $ fromJSONType $ ACB.baseType qn
      jVar = (0, "j")
      vsVar = (1, "vs")
      anonVar = (2, "_")
      fieldNames = mpName <$> msProperties s
      fieldVars = zip [3..] $ (("parsed" ++) . capitalize) <$> fieldNames
      fieldStmts = zipWith (\v p -> AC.CSPat (AC.CPVar v) $ ACB.applyF (lookupFromJSONForMetaProperty p) [ACB.string2ac $ mpName p, AC.CVar vsVar]) fieldVars $ msProperties s
      fields = zip ((mkQName . fieldName prefix) <$> fieldNames) $ AC.CVar <$> fieldVars
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
  return $ AC.CInstance fromJSONClassQName ctx texp fdecls

-- | Picks the correct lookupFromJSON method for the given property.
lookupFromJSONForMetaProperty :: MetaProperty -> AC.QName
lookupFromJSONForMetaProperty p | isOptional = lookupMaybeFromJSONQName
                                | otherwise  = lookupFromJSONQName
  where isOptional = fromMaybe False $ mpOptional p

-- | Converts a meta enumeration to a FromJSON instance.
metaEnumerationToFromJSONInstance :: String -> MetaEnumeration -> GM AC.CInstanceDecl
metaEnumerationToFromJSONInstance prefix e = do
  ty <- metaTypeToTypeExpr $ meType e
  let name = escapeName $ meName e
      qn = mkQName name
      ctx = AC.CContext []
      vis = AC.Public
      texp = ACB.baseType qn
      sig = ACB.emptyClassType $ fromJSONType $ ACB.baseType qn
      jVar = (0, "j")
      rawVar = (1, "raw")
      anonVar = (2, "_")
      errMsg = ACB.applyF (AC.pre "++") [ACB.string2ac $ "Unrecognized " ++ name ++ " value: ", ACB.applyF ppJSONQName [AC.CVar jVar]]
      vals = meValues e
      valLits = metaEnumerationValueToLit . mevValue <$> vals
      valQNames = mkQName . enumValueName prefix . mevName <$> vals
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
  return $ AC.CInstance fromJSONClassQName ctx texp fdecls

-- | Converts a meta enumeration value to a Curry literal.
metaEnumerationValueToLit :: JValue -> AC.CLiteral
metaEnumerationValueToLit j = case j of
  JString s -> AC.CStringc s
  JNumber f -> AC.CIntc $ round f
  _         -> error $ "Unrepresentable enum value: " ++ ppJSON j

-- | Converts a meta enumeration value to a Curry constructor.
metaEnumerationValueToCons :: String -> MetaEnumerationValue -> GM AC.CConsDecl
metaEnumerationValueToCons prefix v = do
  let name = enumValueName prefix (mevName v)
      qn = mkQName name
      vis = AC.Public
  return $ AC.CCons qn vis []

-- | Converts a meta type alias to a Curry type alias.
metaAliasToAlias :: MetaTypeAlias -> GM (Maybe AC.CTypeDecl)
metaAliasToAlias a = do
  let name = escapeName $ mtaName a
      qn = mkQName name
      vis = AC.Public
  texp <- metaTypeToTypeExpr $ mtaType a
  btas <- gets gsBuiltInTypeAliases
  return $ case M.lookup name btas of
    Just _  -> Nothing -- Skip built-in type aliases (e.g. LSPAny)
    Nothing -> Just $ AC.CTypeSyn qn vis [] texp

-- | Converts a meta property to a Curry record field declaration.
metaPropertyToField :: String -> MetaProperty -> GM AC.CFieldDecl
metaPropertyToField prefix p = do
  let qn = mkQName $ fieldName prefix (mpName p)
      vis = AC.Public
  texp <- maybeTypeExprIf (fromMaybe False (mpOptional p)) <$> metaTypeToTypeExpr (mpType p)
  return $ AC.CField qn vis texp

-- | Wraps a type expression in a Maybe if the given flag is set.
maybeTypeExprIf :: Bool -> AC.CTypeExpr -> AC.CTypeExpr
maybeTypeExprIf False = id
maybeTypeExprIf True = ACB.maybeType

-- | Converts a meta type to a Curry type expression.
metaTypeToTypeExpr :: MetaType -> GM AC.CTypeExpr
metaTypeToTypeExpr t = case t of
  MetaTypeReference n     -> do btas <- gets gsBuiltInTypeAliases
                                return $ ACB.baseType $ fromMaybe (mkQName n) $ M.lookup n btas
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

-- | An identifier from the LSP.Protocol.Support module.
support :: String -> AC.QName
support n = ("LSP.Protocol.Support", n)

-- | The FromJSON type class name.
fromJSONClassQName :: AC.QName
fromJSONClassQName = ("LSP.Utils.JSON", "FromJSON")

-- | The ToJSON type class name.
toJSONClassQName :: AC.QName
toJSONClassQName = ("LSP.Utils.JSON", "ToJSON")

-- | The Prelude.Either type.
eitherType :: AC.CTypeExpr -> AC.CTypeExpr -> AC.CTypeExpr
eitherType x y = ACB.applyTC (AC.pre "Either") [x, y]

-- | The JValue qualified name.
jValueQName :: AC.QName
jValueQName = ("JSON.Data", "JValue")

-- | The JObject qualified name.
jObjectQName :: AC.QName
jObjectQName = ("JSON.Data", "JObject")

-- | The fromJSON function type expr with the given result type.
fromJSONType :: AC.CTypeExpr -> AC.CTypeExpr
fromJSONType ty = AC.CFuncType (ACB.baseType jValueQName) (eitherType ACB.stringType ty)

-- | The fromJSON function name.
fromJSONQName :: AC.QName
fromJSONQName = ("LSP.Utils.JSON", "fromJSON")

-- | The lookupFromJSON function name.
lookupFromJSONQName :: AC.QName
lookupFromJSONQName = ("LSP.Utils.JSON", "lookupFromJSON")

-- | The lookupMaybeFromJSON function name.
lookupMaybeFromJSONQName :: AC.QName
lookupMaybeFromJSONQName = ("LSP.Utils.JSON", "lookupMaybeFromJSON")

-- | The ppJSON function name.
ppJSONQName :: AC.QName
ppJSONQName = ("JSON.Pretty", "ppJSON")

-- | Creates a QName with an empty module name.
mkQName :: String -> AC.QName
mkQName n = ("", n)

-- | Generates a prefixed enum value name.
enumValueName :: String -> String -> String
enumValueName prefix name = capitalize prefix ++ capitalize name

-- | Generates a field name.
fieldName :: String -> String -> String
fieldName prefix name = uncapitalize prefix ++ capitalize name

-- | Escapes a type name for use in Curry (e.g. replacing underscores with 'Base').
escapeName :: String -> String
escapeName = replaceSingle '_' "Base"
