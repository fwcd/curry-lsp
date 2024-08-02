-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CodeActionContext
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeActionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedContext <- lookupFromJSON "context" vs
           return
            CodeActionParams { codeActionParamsWorkDoneToken = parsedWorkDoneToken
                             , codeActionParamsPartialResultToken = parsedPartialResultToken
                             , codeActionParamsTextDocument = parsedTextDocument
                             , codeActionParamsRange = parsedRange
                             , codeActionParamsContext = parsedContext }
      _ -> Left ("Unrecognized CodeActionParams value: " ++ ppJSON j)

instance ToJSON CodeActionParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (codeActionParamsWorkDoneToken x),  (.?=)
                                                                 "partialResultToken"
                                                                 (codeActionParamsPartialResultToken
                                                                   x),  (.=)
                                                                         "textDocument"
                                                                         (codeActionParamsTextDocument
                                                                           x),  (.=)
                                                                                 "range"
                                                                                 (codeActionParamsRange
                                                                                   x),  (.=)
                                                                                         "context"
                                                                                         (codeActionParamsContext
                                                                                           x)]

instance Default CodeActionParams where
  def =
    CodeActionParams { codeActionParamsWorkDoneToken = def
                     , codeActionParamsPartialResultToken = def
                     , codeActionParamsTextDocument = def
                     , codeActionParamsRange = def
                     , codeActionParamsContext = def }

data CodeActionParams = CodeActionParams { codeActionParamsWorkDoneToken :: Maybe ProgressToken
                                         , codeActionParamsPartialResultToken :: Maybe ProgressToken
                                         , codeActionParamsTextDocument :: TextDocumentIdentifier
                                         , codeActionParamsRange :: Range
                                         , codeActionParamsContext :: CodeActionContext }
 deriving (Show,Eq)

