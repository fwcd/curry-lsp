-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchySupertypesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TypeHierarchyItem
import LSP.Utils.JSON

instance FromJSON TypeHierarchySupertypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized TypeHierarchySupertypesParams value: " ++ ppJSON j)

data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

