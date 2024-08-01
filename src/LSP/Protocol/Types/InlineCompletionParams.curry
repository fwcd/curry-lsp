-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InlineCompletionContext
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON InlineCompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedContext <- lookupFromJSON "context" vs
           return
            InlineCompletionParams { inlineCompletionParamsTextDocument = parsedTextDocument
                                   , inlineCompletionParamsPosition = parsedPosition
                                   , inlineCompletionParamsWorkDoneToken = parsedWorkDoneToken
                                   , inlineCompletionParamsContext = parsedContext }
      _ -> Left ("Unrecognized InlineCompletionParams value: " ++ ppJSON j)

instance ToJSON InlineCompletionParams where
  toJSON x =
    object
     [(.=) "textDocument" (inlineCompletionParamsTextDocument x),  (.=)
                                                                    "position"
                                                                    (inlineCompletionParamsPosition
                                                                      x),  (.?=)
                                                                            "workDoneToken"
                                                                            (inlineCompletionParamsWorkDoneToken
                                                                              x),  (.=)
                                                                                    "context"
                                                                                    (inlineCompletionParamsContext
                                                                                      x)]

data InlineCompletionParams = InlineCompletionParams { inlineCompletionParamsTextDocument :: TextDocumentIdentifier
                                                     , inlineCompletionParamsPosition :: Position
                                                     , inlineCompletionParamsWorkDoneToken :: Maybe ProgressToken
                                                     , inlineCompletionParamsContext :: InlineCompletionContext }
 deriving (Show,Eq)

