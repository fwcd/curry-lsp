-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RelatedUnchangedDocumentDiagnosticReport where

import Data.Map
import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.FullDocumentDiagnosticReport
import LSP.Protocol.Types.UnchangedDocumentDiagnosticReport
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON RelatedUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupFromJSON "resultId" vs
           parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportKind = parsedKind
                                                     , relatedUnchangedDocumentDiagnosticReportResultId = parsedResultId
                                                     , relatedUnchangedDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized RelatedUnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

instance ToJSON RelatedUnchangedDocumentDiagnosticReport where
  toJSON x =
    object
     [(.=) "kind" (relatedUnchangedDocumentDiagnosticReportKind x),  (.=)
                                                                      "resultId"
                                                                      (relatedUnchangedDocumentDiagnosticReportResultId
                                                                        x),  (.?=)
                                                                              "relatedDocuments"
                                                                              (relatedUnchangedDocumentDiagnosticReportRelatedDocuments
                                                                                x)]

instance Default RelatedUnchangedDocumentDiagnosticReport where
  def =
    RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportKind = def
                                             , relatedUnchangedDocumentDiagnosticReportResultId = def
                                             , relatedUnchangedDocumentDiagnosticReportRelatedDocuments = def }

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportKind :: String
                                                                                         , relatedUnchangedDocumentDiagnosticReportResultId :: String
                                                                                         , relatedUnchangedDocumentDiagnosticReportRelatedDocuments :: Maybe (Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

