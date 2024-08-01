-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentSymbolParams { documentSymbolParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentSymbolParams value: " ++ ppJSON j)

data DocumentSymbolParams = DocumentSymbolParams { documentSymbolParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

