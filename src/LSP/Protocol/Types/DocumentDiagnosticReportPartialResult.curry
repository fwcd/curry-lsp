-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentDiagnosticReportPartialResult where

import Data.Map
import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.FullDocumentDiagnosticReport
import LSP.Protocol.Types.UnchangedDocumentDiagnosticReport
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupFromJSON "relatedDocuments" vs
           return
            DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized DocumentDiagnosticReportPartialResult value: "
           ++ ppJSON j)

instance ToJSON DocumentDiagnosticReportPartialResult where
  toJSON x =
    object
     [(.=) "relatedDocuments"
       (documentDiagnosticReportPartialResultRelatedDocuments x)]

instance Default DocumentDiagnosticReportPartialResult where
  def =
    DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments = def }

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments :: Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport) }
 deriving (Show,Eq)

