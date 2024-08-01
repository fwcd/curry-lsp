-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceDiagnosticReportPartialResult where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceDocumentDiagnosticReport
import LSP.Utils.JSON

instance FromJSON WorkspaceDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems = parsedItems }
      _ ->
        Left
         ("Unrecognized WorkspaceDiagnosticReportPartialResult value: "
           ++ ppJSON j)

instance ToJSON WorkspaceDiagnosticReportPartialResult where
  toJSON x =
    object [(.=) "items" (workspaceDiagnosticReportPartialResultItems x)]

data WorkspaceDiagnosticReportPartialResult = WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems :: [WorkspaceDocumentDiagnosticReport] }
 deriving (Show,Eq)

