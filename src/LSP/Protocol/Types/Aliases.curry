-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Aliases where

import LSP.Utils.JSON
import LSP.Protocol.Support
import Data.Map
import JSON.Data
import JSON.Pretty

type Definition = Either Location [Location]

type DefinitionLink = LocationLink

type LSPArray = [LSPAny]

type Declaration = Either Location [Location]

type DeclarationLink = LocationLink

type InlineValue = Either (Either InlineValueText InlineValueVariableLookup) InlineValueEvaluatableExpression

type DocumentDiagnosticReport = Either RelatedFullDocumentDiagnosticReport RelatedUnchangedDocumentDiagnosticReport

type PrepareRenameResult = Either (Either Range ()) ()

type URI = String

type ProgressToken = Either Int String

type DocumentSelector = [Either String DocumentFilter]

type ChangeAnnotationIdentifier = String

type WorkspaceDocumentDiagnosticReport = Either WorkspaceFullDocumentDiagnosticReport WorkspaceUnchangedDocumentDiagnosticReport

type TextDocumentContentChangeEvent = Either () ()

type MarkedString = Either String ()

type DocumentFilter = Either TextDocumentFilter NotebookCellTextDocumentFilter

type GlobPattern = Either Pattern RelativePattern

type TextDocumentFilter = Either (Either () ()) ()

type NotebookDocumentFilter = Either (Either () ()) ()

type Pattern = String
