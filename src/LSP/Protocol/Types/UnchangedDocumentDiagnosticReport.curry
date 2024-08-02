-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.UnchangedDocumentDiagnosticReport where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON UnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupFromJSON "resultId" vs
           return
            UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind = parsedKind
                                              , unchangedDocumentDiagnosticReportResultId = parsedResultId }
      _ ->
        Left
         ("Unrecognized UnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

instance ToJSON UnchangedDocumentDiagnosticReport where
  toJSON x =
    object
     [(.=) "kind" (unchangedDocumentDiagnosticReportKind x),  (.=) "resultId"
                                                               (unchangedDocumentDiagnosticReportResultId
                                                                 x)]

instance Default UnchangedDocumentDiagnosticReport where
  def =
    UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind = def
                                      , unchangedDocumentDiagnosticReportResultId = def }

data UnchangedDocumentDiagnosticReport = UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind :: String
                                                                           , unchangedDocumentDiagnosticReportResultId :: String }
 deriving (Show,Eq)

