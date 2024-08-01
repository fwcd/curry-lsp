-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyOutgoingCallsParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Utils.JSON

instance FromJSON CallHierarchyOutgoingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyOutgoingCallsParams value: " ++ ppJSON j)

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

