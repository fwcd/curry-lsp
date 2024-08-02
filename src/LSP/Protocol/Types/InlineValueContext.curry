-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.Default
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

instance ToJSON InlineValueContext where
  toJSON x =
    object
     [(.=) "frameId" (inlineValueContextFrameId x),  (.=) "stoppedLocation"
                                                      (inlineValueContextStoppedLocation
                                                        x)]

instance Default InlineValueContext where
  def =
    InlineValueContext { inlineValueContextFrameId = def
                       , inlineValueContextStoppedLocation = def }

data InlineValueContext = InlineValueContext { inlineValueContextFrameId :: Int
                                             , inlineValueContextStoppedLocation :: Range }
 deriving (Show,Eq)

