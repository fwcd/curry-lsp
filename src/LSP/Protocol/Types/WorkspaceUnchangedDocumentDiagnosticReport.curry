-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceUnchangedDocumentDiagnosticReport where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON WorkspaceUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupFromJSON "resultId" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportKind = parsedKind
                                                       , workspaceUnchangedDocumentDiagnosticReportResultId = parsedResultId
                                                       , workspaceUnchangedDocumentDiagnosticReportUri = parsedUri
                                                       , workspaceUnchangedDocumentDiagnosticReportVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized WorkspaceUnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportKind :: String
                                                                                             , workspaceUnchangedDocumentDiagnosticReportResultId :: String
                                                                                             , workspaceUnchangedDocumentDiagnosticReportUri :: DocumentUri
                                                                                             , workspaceUnchangedDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

