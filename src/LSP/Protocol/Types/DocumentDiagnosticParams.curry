-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentDiagnosticParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultId <- lookupMaybeFromJSON "previousResultId" vs
           return
            DocumentDiagnosticParams { documentDiagnosticParamsTextDocument = parsedTextDocument
                                     , documentDiagnosticParamsIdentifier = parsedIdentifier
                                     , documentDiagnosticParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left ("Unrecognized DocumentDiagnosticParams value: " ++ ppJSON j)

data DocumentDiagnosticParams = DocumentDiagnosticParams { documentDiagnosticParamsTextDocument :: TextDocumentIdentifier
                                                         , documentDiagnosticParamsIdentifier :: Maybe String
                                                         , documentDiagnosticParamsPreviousResultId :: Maybe String }
 deriving (Show,Eq)

