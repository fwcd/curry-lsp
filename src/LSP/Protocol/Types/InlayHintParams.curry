-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON InlayHintParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            InlayHintParams { inlayHintParamsTextDocument = parsedTextDocument
                            , inlayHintParamsRange = parsedRange }
      _ -> Left ("Unrecognized InlayHintParams value: " ++ ppJSON j)

data InlayHintParams = InlayHintParams { inlayHintParamsTextDocument :: TextDocumentIdentifier
                                       , inlayHintParamsRange :: Range }
 deriving (Show,Eq)

