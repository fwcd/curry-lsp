-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintLabelPart where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Command
import LSP.Protocol.Types.Location
import LSP.Protocol.Types.MarkupContent
import LSP.Utils.JSON

instance FromJSON InlayHintLabelPart where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValue <- lookupFromJSON "value" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedLocation <- lookupMaybeFromJSON "location" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           return
            InlayHintLabelPart { inlayHintLabelPartValue = parsedValue
                               , inlayHintLabelPartTooltip = parsedTooltip
                               , inlayHintLabelPartLocation = parsedLocation
                               , inlayHintLabelPartCommand = parsedCommand }
      _ -> Left ("Unrecognized InlayHintLabelPart value: " ++ ppJSON j)

instance ToJSON InlayHintLabelPart where
  toJSON x =
    object
     [(.=) "value" (inlayHintLabelPartValue x),  (.?=) "tooltip"
                                                  (inlayHintLabelPartTooltip
                                                    x),  (.?=) "location"
                                                          (inlayHintLabelPartLocation
                                                            x),  (.?=)
                                                                  "command"
                                                                  (inlayHintLabelPartCommand
                                                                    x)]

data InlayHintLabelPart = InlayHintLabelPart { inlayHintLabelPartValue :: String
                                             , inlayHintLabelPartTooltip :: Maybe (Either String MarkupContent)
                                             , inlayHintLabelPartLocation :: Maybe Location
                                             , inlayHintLabelPartCommand :: Maybe Command }
 deriving (Show,Eq)

