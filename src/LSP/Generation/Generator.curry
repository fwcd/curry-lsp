module LSP.Generation.Generator
  ( metaModelToPrettyCurry
  ) where

import qualified AbstractCurry.Types as AC
import qualified AbstractCurry.Build as ACB
import qualified AbstractCurry.Pretty as ACP
import Data.Maybe ( fromMaybe )
import LSP.Generation.Model

-- | Converts a meta structure to a prettyprinted Curry program.
metaModelToPrettyCurry :: String -> MetaModel -> String
metaModelToPrettyCurry name = ACP.showCProg . metaModelToProg name

-- | Converts a meta structure to a Curry program.
metaModelToProg :: String -> MetaModel -> AC.CurryProg
metaModelToProg name m = AC.CurryProg name imps Nothing [] [] tys funs []
  where
    imps = []
    tys = metaStructureToType <$> mmStructures m
    funs = []

-- | Converts a meta structure to Curry type declarations.
metaStructureToType :: MetaStructure -> AC.CTypeDecl
metaStructureToType s = AC.CType qn vis [] [cdecl] []
  where
    qn = mkQName $ msName s
    vis = AC.Public
    fs = metaPropertyToField <$> msProperties s
    cdecl = AC.CRecord qn vis fs

-- | Converts a meta property to a Curry record field declaration.
metaPropertyToField :: MetaProperty -> AC.CFieldDecl
metaPropertyToField p = AC.CField qn vis texp
  where
    qn = mkQName $ mpName p
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
