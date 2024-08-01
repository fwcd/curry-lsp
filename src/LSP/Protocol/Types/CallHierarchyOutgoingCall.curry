-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyOutgoingCall where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyItem
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON CallHierarchyOutgoingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTo <- lookupFromJSON "to" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo = parsedTo
                                      , callHierarchyOutgoingCallFromRanges = parsedFromRanges }
      _ -> Left ("Unrecognized CallHierarchyOutgoingCall value: " ++ ppJSON j)

instance ToJSON CallHierarchyOutgoingCall where
  toJSON x =
    object
     [(.=) "to" (callHierarchyOutgoingCallTo x),  (.=) "fromRanges"
                                                   (callHierarchyOutgoingCallFromRanges
                                                     x)]

data CallHierarchyOutgoingCall = CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo :: CallHierarchyItem
                                                           , callHierarchyOutgoingCallFromRanges :: [Range] }
 deriving (Show,Eq)

