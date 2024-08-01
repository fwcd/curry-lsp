-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchySupertypesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TypeHierarchyItem
import LSP.Utils.JSON

instance FromJSON TypeHierarchySupertypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySupertypesParams { typeHierarchySupertypesParamsWorkDoneToken = parsedWorkDoneToken
                                          , typeHierarchySupertypesParamsPartialResultToken = parsedPartialResultToken
                                          , typeHierarchySupertypesParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized TypeHierarchySupertypesParams value: " ++ ppJSON j)

data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams { typeHierarchySupertypesParamsWorkDoneToken :: Maybe ProgressToken
                                                                   , typeHierarchySupertypesParamsPartialResultToken :: Maybe ProgressToken
                                                                   , typeHierarchySupertypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

