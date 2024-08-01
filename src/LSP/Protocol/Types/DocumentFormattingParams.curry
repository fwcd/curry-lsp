-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FormattingOptions
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentFormattingParams { documentFormattingParamsTextDocument = parsedTextDocument
                                     , documentFormattingParamsOptions = parsedOptions }
      _ -> Left ("Unrecognized DocumentFormattingParams value: " ++ ppJSON j)

data DocumentFormattingParams = DocumentFormattingParams { documentFormattingParamsTextDocument :: TextDocumentIdentifier
                                                         , documentFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

