-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchySubtypesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TypeHierarchyItem
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TypeHierarchySubtypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySubtypesParams { typeHierarchySubtypesParamsWorkDoneToken = parsedWorkDoneToken
                                        , typeHierarchySubtypesParamsPartialResultToken = parsedPartialResultToken
                                        , typeHierarchySubtypesParamsItem = parsedItem }
      _ ->
        Left ("Unrecognized TypeHierarchySubtypesParams value: " ++ ppJSON j)

instance ToJSON TypeHierarchySubtypesParams where
  toJSON x =
    object
     [(.?=) "workDoneToken"
       (typeHierarchySubtypesParamsWorkDoneToken x),  (.?=)
                                                       "partialResultToken"
                                                       (typeHierarchySubtypesParamsPartialResultToken
                                                         x),  (.=) "item"
                                                               (typeHierarchySubtypesParamsItem
                                                                 x)]

instance Default TypeHierarchySubtypesParams where
  def =
    TypeHierarchySubtypesParams { typeHierarchySubtypesParamsWorkDoneToken = def
                                , typeHierarchySubtypesParamsPartialResultToken = def
                                , typeHierarchySubtypesParamsItem = def }

data TypeHierarchySubtypesParams = TypeHierarchySubtypesParams { typeHierarchySubtypesParamsWorkDoneToken :: Maybe ProgressToken
                                                               , typeHierarchySubtypesParamsPartialResultToken :: Maybe ProgressToken
                                                               , typeHierarchySubtypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

