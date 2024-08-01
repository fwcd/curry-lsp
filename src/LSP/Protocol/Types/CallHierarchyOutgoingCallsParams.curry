-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyOutgoingCallsParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON CallHierarchyOutgoingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsWorkDoneToken = parsedWorkDoneToken
                                             , callHierarchyOutgoingCallsParamsPartialResultToken = parsedPartialResultToken
                                             , callHierarchyOutgoingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyOutgoingCallsParams value: " ++ ppJSON j)

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsWorkDoneToken :: Maybe ProgressToken
                                                                         , callHierarchyOutgoingCallsParamsPartialResultToken :: Maybe ProgressToken
                                                                         , callHierarchyOutgoingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

