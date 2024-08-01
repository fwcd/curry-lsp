-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchySubtypesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TypeHierarchyItem
import LSP.Utils.JSON

instance FromJSON TypeHierarchySubtypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem = parsedItem }
      _ ->
        Left ("Unrecognized TypeHierarchySubtypesParams value: " ++ ppJSON j)

data TypeHierarchySubtypesParams = TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

