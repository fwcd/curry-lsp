-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceDiagnosticReport where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceDocumentDiagnosticReport
import LSP.Utils.JSON

instance FromJSON WorkspaceDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReport { workspaceDiagnosticReportItems = parsedItems }
      _ -> Left ("Unrecognized WorkspaceDiagnosticReport value: " ++ ppJSON j)

data WorkspaceDiagnosticReport = WorkspaceDiagnosticReport { workspaceDiagnosticReportItems :: [WorkspaceDocumentDiagnosticReport] }
 deriving (Show,Eq)

