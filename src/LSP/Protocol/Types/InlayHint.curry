-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHint where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.InlayHintKind
import LSP.Protocol.Types.InlayHintLabelPart
import LSP.Protocol.Types.MarkupContent
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.TextEdit
import LSP.Utils.JSON

instance FromJSON InlayHint where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPosition <- lookupFromJSON "position" vs
           parsedLabel <- lookupFromJSON "label" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedTextEdits <- lookupMaybeFromJSON "textEdits" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedPaddingLeft <- lookupMaybeFromJSON "paddingLeft" vs
           parsedPaddingRight <- lookupMaybeFromJSON "paddingRight" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            InlayHint { inlayHintPosition = parsedPosition
                      , inlayHintLabel = parsedLabel
                      , inlayHintKind = parsedKind
                      , inlayHintTextEdits = parsedTextEdits
                      , inlayHintTooltip = parsedTooltip
                      , inlayHintPaddingLeft = parsedPaddingLeft
                      , inlayHintPaddingRight = parsedPaddingRight
                      , inlayHintData = parsedData }
      _ -> Left ("Unrecognized InlayHint value: " ++ ppJSON j)

data InlayHint = InlayHint { inlayHintPosition :: Position
                           , inlayHintLabel :: Either String [InlayHintLabelPart]
                           , inlayHintKind :: Maybe InlayHintKind
                           , inlayHintTextEdits :: Maybe [TextEdit]
                           , inlayHintTooltip :: Maybe (Either String MarkupContent)
                           , inlayHintPaddingLeft :: Maybe Bool
                           , inlayHintPaddingRight :: Maybe Bool
                           , inlayHintData :: Maybe LSPAny }
 deriving (Show,Eq)

