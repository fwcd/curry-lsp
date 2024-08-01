-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentColorParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentColorParams { documentColorParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentColorParams value: " ++ ppJSON j)

data DocumentColorParams = DocumentColorParams { documentColorParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

