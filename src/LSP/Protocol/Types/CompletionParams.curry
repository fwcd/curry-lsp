-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionContext
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON CompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedContext <- lookupMaybeFromJSON "context" vs
           return
            CompletionParams { completionParamsTextDocument = parsedTextDocument
                             , completionParamsPosition = parsedPosition
                             , completionParamsWorkDoneToken = parsedWorkDoneToken
                             , completionParamsPartialResultToken = parsedPartialResultToken
                             , completionParamsContext = parsedContext }
      _ -> Left ("Unrecognized CompletionParams value: " ++ ppJSON j)

instance ToJSON CompletionParams where
  toJSON x =
    object
     [(.=) "textDocument" (completionParamsTextDocument x),  (.=) "position"
                                                              (completionParamsPosition
                                                                x),  (.?=)
                                                                      "workDoneToken"
                                                                      (completionParamsWorkDoneToken
                                                                        x),  (.?=)
                                                                              "partialResultToken"
                                                                              (completionParamsPartialResultToken
                                                                                x),  (.?=)
                                                                                      "context"
                                                                                      (completionParamsContext
                                                                                        x)]

data CompletionParams = CompletionParams { completionParamsTextDocument :: TextDocumentIdentifier
                                         , completionParamsPosition :: Position
                                         , completionParamsWorkDoneToken :: Maybe ProgressToken
                                         , completionParamsPartialResultToken :: Maybe ProgressToken
                                         , completionParamsContext :: Maybe CompletionContext }
 deriving (Show,Eq)

