-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyIncomingCallsParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Protocol.Types.ProgressToken
import LSP.Utils.JSON

instance FromJSON CallHierarchyIncomingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsWorkDoneToken = parsedWorkDoneToken
                                             , callHierarchyIncomingCallsParamsPartialResultToken = parsedPartialResultToken
                                             , callHierarchyIncomingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyIncomingCallsParams value: " ++ ppJSON j)

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsWorkDoneToken :: Maybe ProgressToken
                                                                         , callHierarchyIncomingCallsParamsPartialResultToken :: Maybe ProgressToken
                                                                         , callHierarchyIncomingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

