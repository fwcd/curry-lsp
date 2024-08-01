-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRanges where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON LinkedEditingRanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRanges <- lookupFromJSON "ranges" vs
           parsedWordPattern <- lookupMaybeFromJSON "wordPattern" vs
           return
            LinkedEditingRanges { linkedEditingRangesRanges = parsedRanges
                                , linkedEditingRangesWordPattern = parsedWordPattern }
      _ -> Left ("Unrecognized LinkedEditingRanges value: " ++ ppJSON j)

instance ToJSON LinkedEditingRanges where
  toJSON x =
    object
     [(.=) "ranges" (linkedEditingRangesRanges x),  (.?=) "wordPattern"
                                                     (linkedEditingRangesWordPattern
                                                       x)]

data LinkedEditingRanges = LinkedEditingRanges { linkedEditingRangesRanges :: [Range]
                                               , linkedEditingRangesWordPattern :: Maybe String }
 deriving (Show,Eq)

