-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensDeltaParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SemanticTokensDeltaParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPreviousResultId <- lookupFromJSON "previousResultId" vs
           return
            SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument = parsedTextDocument
                                      , semanticTokensDeltaParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left ("Unrecognized SemanticTokensDeltaParams value: " ++ ppJSON j)

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensDeltaParamsPreviousResultId :: String }
 deriving (Show,Eq)

