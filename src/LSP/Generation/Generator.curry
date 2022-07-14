module LSP.Generation.Generator
  ( metaModelToPrettyCurry
  ) where

import qualified AbstractCurry.Types as AC
import qualified AbstractCurry.Build as ACB
import qualified AbstractCurry.Pretty as ACP
import Control.Monad.Trans.State ( State, evalState, gets )
import qualified Data.Map as M
import Data.Maybe ( fromMaybe, maybeToList )
import LSP.Generation.Model
import LSP.Utils.General ( capitalize, uncapitalize, replaceSingle )

-- | Internal generator state.
data GeneratorState = GeneratorState
  { gsStructMap :: M.Map String MetaStructure
  }

type GM = State GeneratorState

-- | Creates the initial generator state.
initialGeneratorState :: MetaModel -> GeneratorState
initialGeneratorState m = GeneratorState
  { gsStructMap = M.fromList $ (\s -> (escapeName (msName s), s)) <$> mmStructures m
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
  tys <- mapM metaStructureToType $ mmStructures m
  return $ AC.CurryProg name imps Nothing [] [] tys funs []

-- | Converts a meta structure to Curry type declarations.
metaStructureToType :: MetaStructure -> GM AC.CTypeDecl
metaStructureToType s = do
  sm <- gets gsStructMap
  let name = escapeName $ msName s
      qn = mkQName name
      -- | Computes the transitive closure of properties for the given type name.
      transitiveProps :: String -> [MetaProperty]
      transitiveProps n = do
        s' <- maybeToList $ M.lookup n sm
        msProperties s ++ (msExtends s' >>= extractName >>= transitiveProps)
                       ++ (msMixins s' >>= extractName >>= transitiveProps)
        where
          extractName :: MetaType -> [String]
          extractName t = case t of
            MetaTypeReference n' -> [n']
            _                    -> []
      props = transitiveProps name
      fs = metaPropertyToField name <$> props
      vis = AC.Public
      cdecl = AC.CRecord qn vis fs
  return $ AC.CType qn vis [] [cdecl] []

-- | Converts a meta property to a Curry record field declaration.
metaPropertyToField :: String -> MetaProperty -> AC.CFieldDecl
metaPropertyToField prefix p = AC.CField qn vis texp
  where
    qn = mkQName $ uncapitalize prefix ++ capitalize (mpName p)
    vis = AC.Public
    texp = maybeTypeExprIf (fromMaybe False (mpOptional p)) $ metaTypeToTypeExpr $ mpType p

-- | Wraps a type expression in a Maybe if the given flag is set.
maybeTypeExprIf :: Bool -> AC.CTypeExpr -> AC.CTypeExpr
maybeTypeExprIf False = id
maybeTypeExprIf True = ACB.maybeType

-- | Converts a meta type to a Curry type expression.
metaTypeToTypeExpr :: MetaType -> AC.CTypeExpr
metaTypeToTypeExpr t = case t of
  MetaTypeReference n     -> ACB.baseType $ mkQName n
  MetaTypeArray a         -> ACB.listType $ metaTypeToTypeExpr a
  MetaTypeMap k e         -> ACB.applyTC ("Data.Map", "Map") $ metaTypeToTypeExpr <$> [k, e]
  MetaTypeBase b          -> metaBaseTypeToTypeExpr b
  MetaTypeOr is           -> foldl1 (\x y -> ACB.applyTC (AC.pre "Either") [x, y]) $ metaTypeToTypeExpr <$> is
  -- TODO: Find a better representation for string literal types?
  -- We should probably rewrite or-ed string literal types to algebraic data types!
  MetaTypeStringLiteral _ -> ACB.stringType
  MetaTypeTuple is        -> ACB.tupleType $ metaTypeToTypeExpr <$> is
  MetaTypeLiteral _       -> ACB.unitType -- TODO

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
