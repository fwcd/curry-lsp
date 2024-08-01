-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FullDocumentDiagnosticReport where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Diagnostic
import LSP.Utils.JSON

instance FromJSON FullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedItems <- lookupFromJSON "items" vs
           return
            FullDocumentDiagnosticReport { fullDocumentDiagnosticReportKind = parsedKind
                                         , fullDocumentDiagnosticReportResultId = parsedResultId
                                         , fullDocumentDiagnosticReportItems = parsedItems }
      _ ->
        Left ("Unrecognized FullDocumentDiagnosticReport value: " ++ ppJSON j)

data FullDocumentDiagnosticReport = FullDocumentDiagnosticReport { fullDocumentDiagnosticReportKind :: String
                                                                 , fullDocumentDiagnosticReportResultId :: Maybe String
                                                                 , fullDocumentDiagnosticReportItems :: [Diagnostic] }
 deriving (Show,Eq)

