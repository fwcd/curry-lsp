-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SemanticTokensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            SemanticTokensParams { semanticTokensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized SemanticTokensParams value: " ++ ppJSON j)

data SemanticTokensParams = SemanticTokensParams { semanticTokensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

