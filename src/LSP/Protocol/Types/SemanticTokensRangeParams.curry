-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensRangeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            SemanticTokensRangeParams { semanticTokensRangeParamsWorkDoneToken = parsedWorkDoneToken
                                      , semanticTokensRangeParamsPartialResultToken = parsedPartialResultToken
                                      , semanticTokensRangeParamsTextDocument = parsedTextDocument
                                      , semanticTokensRangeParamsRange = parsedRange }
      _ -> Left ("Unrecognized SemanticTokensRangeParams value: " ++ ppJSON j)

instance ToJSON SemanticTokensRangeParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (semanticTokensRangeParamsWorkDoneToken x),  (.?=)
                                                                          "partialResultToken"
                                                                          (semanticTokensRangeParamsPartialResultToken
                                                                            x),  (.=)
                                                                                  "textDocument"
                                                                                  (semanticTokensRangeParamsTextDocument
                                                                                    x),  (.=)
                                                                                          "range"
                                                                                          (semanticTokensRangeParamsRange
                                                                                            x)]

instance Default SemanticTokensRangeParams where
  def =
    SemanticTokensRangeParams { semanticTokensRangeParamsWorkDoneToken = def
                              , semanticTokensRangeParamsPartialResultToken = def
                              , semanticTokensRangeParamsTextDocument = def
                              , semanticTokensRangeParamsRange = def }

data SemanticTokensRangeParams = SemanticTokensRangeParams { semanticTokensRangeParamsWorkDoneToken :: Maybe ProgressToken
                                                           , semanticTokensRangeParamsPartialResultToken :: Maybe ProgressToken
                                                           , semanticTokensRangeParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensRangeParamsRange :: Range }
 deriving (Show,Eq)

