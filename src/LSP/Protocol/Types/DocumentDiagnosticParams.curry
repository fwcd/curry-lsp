-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentDiagnosticParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultId <- lookupMaybeFromJSON "previousResultId" vs
           return
            DocumentDiagnosticParams { documentDiagnosticParamsWorkDoneToken = parsedWorkDoneToken
                                     , documentDiagnosticParamsPartialResultToken = parsedPartialResultToken
                                     , documentDiagnosticParamsTextDocument = parsedTextDocument
                                     , documentDiagnosticParamsIdentifier = parsedIdentifier
                                     , documentDiagnosticParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left ("Unrecognized DocumentDiagnosticParams value: " ++ ppJSON j)

instance ToJSON DocumentDiagnosticParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (documentDiagnosticParamsWorkDoneToken x),  (.?=)
                                                                         "partialResultToken"
                                                                         (documentDiagnosticParamsPartialResultToken
                                                                           x),  (.=)
                                                                                 "textDocument"
                                                                                 (documentDiagnosticParamsTextDocument
                                                                                   x),  (.?=)
                                                                                         "identifier"
                                                                                         (documentDiagnosticParamsIdentifier
                                                                                           x),  (.?=)
                                                                                                 "previousResultId"
                                                                                                 (documentDiagnosticParamsPreviousResultId
                                                                                                   x)]

instance Default DocumentDiagnosticParams where
  def =
    DocumentDiagnosticParams { documentDiagnosticParamsWorkDoneToken = def
                             , documentDiagnosticParamsPartialResultToken = def
                             , documentDiagnosticParamsTextDocument = def
                             , documentDiagnosticParamsIdentifier = def
                             , documentDiagnosticParamsPreviousResultId = def }

data DocumentDiagnosticParams = DocumentDiagnosticParams { documentDiagnosticParamsWorkDoneToken :: Maybe ProgressToken
                                                         , documentDiagnosticParamsPartialResultToken :: Maybe ProgressToken
                                                         , documentDiagnosticParamsTextDocument :: TextDocumentIdentifier
                                                         , documentDiagnosticParamsIdentifier :: Maybe String
                                                         , documentDiagnosticParamsPreviousResultId :: Maybe String }
 deriving (Show,Eq)

