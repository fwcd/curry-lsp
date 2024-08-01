-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentDiagnosticReport where

import LSP.Protocol.Types.RelatedFullDocumentDiagnosticReport
import LSP.Protocol.Types.RelatedUnchangedDocumentDiagnosticReport

type DocumentDiagnosticReport = Either RelatedFullDocumentDiagnosticReport RelatedUnchangedDocumentDiagnosticReport

