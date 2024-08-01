-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyIncomingCall where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON CallHierarchyIncomingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrom <- lookupFromJSON "from" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyIncomingCall { callHierarchyIncomingCallFrom = parsedFrom
                                      , callHierarchyIncomingCallFromRanges = parsedFromRanges }
      _ -> Left ("Unrecognized CallHierarchyIncomingCall value: " ++ ppJSON j)

data CallHierarchyIncomingCall = CallHierarchyIncomingCall { callHierarchyIncomingCallFrom :: CallHierarchyItem
                                                           , callHierarchyIncomingCallFromRanges :: [Range] }
 deriving (Show,Eq)

