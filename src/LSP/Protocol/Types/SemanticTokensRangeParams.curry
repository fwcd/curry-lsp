-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SemanticTokensRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument = parsedTextDocument
                                      , semanticTokensRangeParamsRange = parsedRange }
      _ -> Left ("Unrecognized SemanticTokensRangeParams value: " ++ ppJSON j)

data SemanticTokensRangeParams = SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensRangeParamsRange :: Range }
 deriving (Show,Eq)

