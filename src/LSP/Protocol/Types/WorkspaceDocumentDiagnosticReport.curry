-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceDocumentDiagnosticReport where

import LSP.Protocol.Types.WorkspaceFullDocumentDiagnosticReport
import LSP.Protocol.Types.WorkspaceUnchangedDocumentDiagnosticReport

type WorkspaceDocumentDiagnosticReport = Either WorkspaceFullDocumentDiagnosticReport WorkspaceUnchangedDocumentDiagnosticReport

