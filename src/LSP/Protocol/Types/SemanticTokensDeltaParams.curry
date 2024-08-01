-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensDeltaParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SemanticTokensDeltaParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPreviousResultId <- lookupFromJSON "previousResultId" vs
           return
            SemanticTokensDeltaParams { semanticTokensDeltaParamsWorkDoneToken = parsedWorkDoneToken
                                      , semanticTokensDeltaParamsPartialResultToken = parsedPartialResultToken
                                      , semanticTokensDeltaParamsTextDocument = parsedTextDocument
                                      , semanticTokensDeltaParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left ("Unrecognized SemanticTokensDeltaParams value: " ++ ppJSON j)

instance ToJSON SemanticTokensDeltaParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (semanticTokensDeltaParamsWorkDoneToken x),  (.?=)
                                                                          "partialResultToken"
                                                                          (semanticTokensDeltaParamsPartialResultToken
                                                                            x),  (.=)
                                                                                  "textDocument"
                                                                                  (semanticTokensDeltaParamsTextDocument
                                                                                    x),  (.=)
                                                                                          "previousResultId"
                                                                                          (semanticTokensDeltaParamsPreviousResultId
                                                                                            x)]

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { semanticTokensDeltaParamsWorkDoneToken :: Maybe ProgressToken
                                                           , semanticTokensDeltaParamsPartialResultToken :: Maybe ProgressToken
                                                           , semanticTokensDeltaParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensDeltaParamsPreviousResultId :: String }
 deriving (Show,Eq)

