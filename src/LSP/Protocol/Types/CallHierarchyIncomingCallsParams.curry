-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyIncomingCallsParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Utils.JSON

instance FromJSON CallHierarchyIncomingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyIncomingCallsParams value: " ++ ppJSON j)

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

