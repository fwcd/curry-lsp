-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ColorPresentationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Color
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON ColorPresentationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedColor <- lookupFromJSON "color" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            ColorPresentationParams { colorPresentationParamsTextDocument = parsedTextDocument
                                    , colorPresentationParamsColor = parsedColor
                                    , colorPresentationParamsRange = parsedRange }
      _ -> Left ("Unrecognized ColorPresentationParams value: " ++ ppJSON j)

data ColorPresentationParams = ColorPresentationParams { colorPresentationParamsTextDocument :: TextDocumentIdentifier
                                                       , colorPresentationParamsColor :: Color
                                                       , colorPresentationParamsRange :: Range }
 deriving (Show,Eq)

