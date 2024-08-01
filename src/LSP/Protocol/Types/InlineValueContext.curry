-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON InlineValueContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrameId <- lookupFromJSON "frameId" vs
           parsedStoppedLocation <- lookupFromJSON "stoppedLocation" vs
           return
            InlineValueContext { inlineValueContextFrameId = parsedFrameId
                               , inlineValueContextStoppedLocation = parsedStoppedLocation }
      _ -> Left ("Unrecognized InlineValueContext value: " ++ ppJSON j)

data InlineValueContext = InlineValueContext { inlineValueContextFrameId :: Int
                                             , inlineValueContextStoppedLocation :: Range }
 deriving (Show,Eq)

