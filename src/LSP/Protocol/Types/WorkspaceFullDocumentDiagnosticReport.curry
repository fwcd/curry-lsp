-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceFullDocumentDiagnosticReport where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Diagnostic
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedItems <- lookupFromJSON "items" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportKind = parsedKind
                                                  , workspaceFullDocumentDiagnosticReportResultId = parsedResultId
                                                  , workspaceFullDocumentDiagnosticReportItems = parsedItems
                                                  , workspaceFullDocumentDiagnosticReportUri = parsedUri
                                                  , workspaceFullDocumentDiagnosticReportVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized WorkspaceFullDocumentDiagnosticReport value: "
           ++ ppJSON j)

instance ToJSON WorkspaceFullDocumentDiagnosticReport where
  toJSON x =
    object
     [(.=) "kind" (workspaceFullDocumentDiagnosticReportKind x),  (.?=)
                                                                   "resultId"
                                                                   (workspaceFullDocumentDiagnosticReportResultId
                                                                     x),  (.=)
                                                                           "items"
                                                                           (workspaceFullDocumentDiagnosticReportItems
                                                                             x),  (.=)
                                                                                   "uri"
                                                                                   (workspaceFullDocumentDiagnosticReportUri
                                                                                     x),  (.=)
                                                                                           "version"
                                                                                           (workspaceFullDocumentDiagnosticReportVersion
                                                                                             x)]

instance Default WorkspaceFullDocumentDiagnosticReport where
  def =
    WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportKind = def
                                          , workspaceFullDocumentDiagnosticReportResultId = def
                                          , workspaceFullDocumentDiagnosticReportItems = def
                                          , workspaceFullDocumentDiagnosticReportUri = def
                                          , workspaceFullDocumentDiagnosticReportVersion = def }

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportKind :: String
                                                                                   , workspaceFullDocumentDiagnosticReportResultId :: Maybe String
                                                                                   , workspaceFullDocumentDiagnosticReportItems :: [Diagnostic]
                                                                                   , workspaceFullDocumentDiagnosticReportUri :: DocumentUri
                                                                                   , workspaceFullDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

