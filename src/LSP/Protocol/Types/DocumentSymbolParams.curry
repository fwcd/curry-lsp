-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentSymbolParams { documentSymbolParamsWorkDoneToken = parsedWorkDoneToken
                                 , documentSymbolParamsPartialResultToken = parsedPartialResultToken
                                 , documentSymbolParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentSymbolParams value: " ++ ppJSON j)

data DocumentSymbolParams = DocumentSymbolParams { documentSymbolParamsWorkDoneToken :: Maybe ProgressToken
                                                 , documentSymbolParamsPartialResultToken :: Maybe ProgressToken
                                                 , documentSymbolParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

