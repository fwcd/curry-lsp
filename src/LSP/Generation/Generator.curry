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
  MetaTypeReference n -> ACB.baseType $ mkQName n
  _                   -> ACB.baseType $ AC.pre "()" -- TODO

-- | Creates a QName with an empty module name.
mkQName :: String -> AC.QName
mkQName n = ("", n)
