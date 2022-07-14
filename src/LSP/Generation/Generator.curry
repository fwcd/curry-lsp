module LSP.Generation.Generator
  ( metaModelToPrettyCurry
  ) where

import qualified AbstractCurry.Types as AC
import qualified AbstractCurry.Build as ACB
import qualified AbstractCurry.Pretty as ACP
import Control.Monad.Trans.State ( State, evalState, gets )
import qualified Data.Map as M
import Data.Maybe ( fromMaybe, maybeToList, catMaybes )
import LSP.Generation.Model
import LSP.Utils.General ( capitalize, uncapitalize, replaceSingle )

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

-- | Converts a meta structure to a prettyprinted Curry program.
metaModelToPrettyCurry :: String -> MetaModel -> String
metaModelToPrettyCurry name m = ACP.showCProg $ evalState (metaModelToProg name m) st
  where
    st = initialGeneratorState m

-- | Converts a meta structure to a Curry program.
metaModelToProg :: String -> MetaModel -> GM AC.CurryProg
metaModelToProg name m = do
  let imps = []
      funs = []
  structs <- mapM metaStructureToType (mmStructures m)
  enums <- mapM metaEnumerationToType (mmEnumerations m)
  aliases <- catMaybes <$> mapM metaAliasToAlias (mmTypeAliases m)
  let tys = structs ++ enums ++ aliases
  return $ AC.CurryProg name imps Nothing [] [] tys funs []

-- | Converts a meta structure to a Curry type declaration.
metaStructureToType :: MetaStructure -> GM AC.CTypeDecl
metaStructureToType s = do
  let name = escapeName $ msName s
      qn = mkQName name
      props = msProperties s
      vis = AC.Public
  fs <- mapM (metaPropertyToField name) props
  derivs <- gets gsStandardDerivings
  let cdecl = AC.CRecord qn vis fs
  return $ AC.CType qn vis [] [cdecl] derivs

-- | Converts a meta enumeration to a Curry type declaration.
metaEnumerationToType :: MetaEnumeration -> GM AC.CTypeDecl
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
  let derivs = stdDerivs ++ enumDerivs
  return $ AC.CType qn vis [] cdecls derivs

-- | Converts a meta enumeration value to a Curry constructor.
metaEnumerationValueToCons :: String -> MetaEnumerationValue -> GM AC.CConsDecl
metaEnumerationValueToCons prefix v = do
  let name = prefix ++ capitalize (escapeName (mevName v))
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
  let qn = mkQName $ uncapitalize prefix ++ capitalize (mpName p)
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

-- | An identifier from the LSP.Protocol.Support module.
support :: String -> AC.QName
support n = ("LSP.Protocol.Support", n)

-- | Creates a QName with an empty module name.
mkQName :: String -> AC.QName
mkQName n = ("", n)

-- | Escapes a type name for use in Curry (e.g. replacing underscores with 'Base').
escapeName :: String -> String
escapeName = replaceSingle '_' "Base"
