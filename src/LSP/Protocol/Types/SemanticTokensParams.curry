-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SemanticTokensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            SemanticTokensParams { semanticTokensParamsWorkDoneToken = parsedWorkDoneToken
                                 , semanticTokensParamsPartialResultToken = parsedPartialResultToken
                                 , semanticTokensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized SemanticTokensParams value: " ++ ppJSON j)

instance ToJSON SemanticTokensParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (semanticTokensParamsWorkDoneToken x),  (.?=)
                                                                     "partialResultToken"
                                                                     (semanticTokensParamsPartialResultToken
                                                                       x),  (.=)
                                                                             "textDocument"
                                                                             (semanticTokensParamsTextDocument
                                                                               x)]

instance Default SemanticTokensParams where
  def =
    SemanticTokensParams { semanticTokensParamsWorkDoneToken = def
                         , semanticTokensParamsPartialResultToken = def
                         , semanticTokensParamsTextDocument = def }

data SemanticTokensParams = SemanticTokensParams { semanticTokensParamsWorkDoneToken :: Maybe ProgressToken
                                                 , semanticTokensParamsPartialResultToken :: Maybe ProgressToken
                                                 , semanticTokensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

