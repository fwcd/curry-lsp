-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RelatedFullDocumentDiagnosticReport where

import Data.Map
import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Diagnostic
import LSP.Protocol.Types.FullDocumentDiagnosticReport
import LSP.Protocol.Types.UnchangedDocumentDiagnosticReport
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON RelatedFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedItems <- lookupFromJSON "items" vs
           parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportKind = parsedKind
                                                , relatedFullDocumentDiagnosticReportResultId = parsedResultId
                                                , relatedFullDocumentDiagnosticReportItems = parsedItems
                                                , relatedFullDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized RelatedFullDocumentDiagnosticReport value: "
           ++ ppJSON j)

instance ToJSON RelatedFullDocumentDiagnosticReport where
  toJSON x =
    object
     [(.=) "kind" (relatedFullDocumentDiagnosticReportKind x),  (.?=)
                                                                 "resultId"
                                                                 (relatedFullDocumentDiagnosticReportResultId
                                                                   x),  (.=)
                                                                         "items"
                                                                         (relatedFullDocumentDiagnosticReportItems
                                                                           x),  (.?=)
                                                                                 "relatedDocuments"
                                                                                 (relatedFullDocumentDiagnosticReportRelatedDocuments
                                                                                   x)]

instance Default RelatedFullDocumentDiagnosticReport where
  def =
    RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportKind = def
                                        , relatedFullDocumentDiagnosticReportResultId = def
                                        , relatedFullDocumentDiagnosticReportItems = def
                                        , relatedFullDocumentDiagnosticReportRelatedDocuments = def }

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportKind :: String
                                                                               , relatedFullDocumentDiagnosticReportResultId :: Maybe String
                                                                               , relatedFullDocumentDiagnosticReportItems :: [Diagnostic]
                                                                               , relatedFullDocumentDiagnosticReportRelatedDocuments :: Maybe (Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

