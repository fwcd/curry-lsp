-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RelatedUnchangedDocumentDiagnosticReport where

import Data.Map
import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.FullDocumentDiagnosticReport
import LSP.Protocol.Types.UnchangedDocumentDiagnosticReport
import LSP.Utils.JSON

instance FromJSON RelatedUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized RelatedUnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments :: Maybe (Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

