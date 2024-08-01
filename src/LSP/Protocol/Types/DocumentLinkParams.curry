-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentLinkParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentLinkParams { documentLinkParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentLinkParams value: " ++ ppJSON j)

data DocumentLinkParams = DocumentLinkParams { documentLinkParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

