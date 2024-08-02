-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Range where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON Range where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedEnd <- lookupFromJSON "end" vs
           return Range { rangeStart = parsedStart, rangeEnd = parsedEnd }
      _ -> Left ("Unrecognized Range value: " ++ ppJSON j)

instance ToJSON Range where
  toJSON x = object [(.=) "start" (rangeStart x),  (.=) "end" (rangeEnd x)]

instance Default Range where
  def = Range { rangeStart = def, rangeEnd = def }

data Range = Range { rangeStart :: Position, rangeEnd :: Position }
 deriving (Show,Eq)

