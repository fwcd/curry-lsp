-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ServerCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.CallHierarchyOptions
import LSP.Protocol.Types.CallHierarchyRegistrationOptions
import LSP.Protocol.Types.CodeActionOptions
import LSP.Protocol.Types.CodeLensOptions
import LSP.Protocol.Types.CompletionOptions
import LSP.Protocol.Types.DeclarationOptions
import LSP.Protocol.Types.DeclarationRegistrationOptions
import LSP.Protocol.Types.DefinitionOptions
import LSP.Protocol.Types.DiagnosticOptions
import LSP.Protocol.Types.DiagnosticRegistrationOptions
import LSP.Protocol.Types.DocumentColorOptions
import LSP.Protocol.Types.DocumentColorRegistrationOptions
import LSP.Protocol.Types.DocumentFormattingOptions
import LSP.Protocol.Types.DocumentHighlightOptions
import LSP.Protocol.Types.DocumentLinkOptions
import LSP.Protocol.Types.DocumentOnTypeFormattingOptions
import LSP.Protocol.Types.DocumentRangeFormattingOptions
import LSP.Protocol.Types.DocumentSymbolOptions
import LSP.Protocol.Types.ExecuteCommandOptions
import LSP.Protocol.Types.FoldingRangeOptions
import LSP.Protocol.Types.FoldingRangeRegistrationOptions
import LSP.Protocol.Types.HoverOptions
import LSP.Protocol.Types.ImplementationOptions
import LSP.Protocol.Types.ImplementationRegistrationOptions
import LSP.Protocol.Types.InlayHintOptions
import LSP.Protocol.Types.InlayHintRegistrationOptions
import LSP.Protocol.Types.InlineCompletionOptions
import LSP.Protocol.Types.InlineValueOptions
import LSP.Protocol.Types.InlineValueRegistrationOptions
import LSP.Protocol.Types.LinkedEditingRangeOptions
import LSP.Protocol.Types.LinkedEditingRangeRegistrationOptions
import LSP.Protocol.Types.MonikerOptions
import LSP.Protocol.Types.MonikerRegistrationOptions
import LSP.Protocol.Types.NotebookDocumentSyncOptions
import LSP.Protocol.Types.NotebookDocumentSyncRegistrationOptions
import LSP.Protocol.Types.PositionEncodingKind
import LSP.Protocol.Types.ReferenceOptions
import LSP.Protocol.Types.RenameOptions
import LSP.Protocol.Types.SelectionRangeOptions
import LSP.Protocol.Types.SelectionRangeRegistrationOptions
import LSP.Protocol.Types.SemanticTokensOptions
import LSP.Protocol.Types.SemanticTokensRegistrationOptions
import LSP.Protocol.Types.SignatureHelpOptions
import LSP.Protocol.Types.TextDocumentSyncKind
import LSP.Protocol.Types.TextDocumentSyncOptions
import LSP.Protocol.Types.TypeDefinitionOptions
import LSP.Protocol.Types.TypeDefinitionRegistrationOptions
import LSP.Protocol.Types.TypeHierarchyOptions
import LSP.Protocol.Types.TypeHierarchyRegistrationOptions
import LSP.Protocol.Types.WorkspaceOptions
import LSP.Protocol.Types.WorkspaceSymbolOptions
import LSP.Utils.JSON

instance FromJSON ServerCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPositionEncoding <- lookupMaybeFromJSON "positionEncoding" vs
           parsedTextDocumentSync <- lookupMaybeFromJSON "textDocumentSync" vs
           parsedNotebookDocumentSync <- lookupMaybeFromJSON
                                          "notebookDocumentSync"
                                          vs
           parsedCompletionProvider <- lookupMaybeFromJSON
                                        "completionProvider"
                                        vs
           parsedHoverProvider <- lookupMaybeFromJSON "hoverProvider" vs
           parsedSignatureHelpProvider <- lookupMaybeFromJSON
                                           "signatureHelpProvider"
                                           vs
           parsedDeclarationProvider <- lookupMaybeFromJSON
                                         "declarationProvider"
                                         vs
           parsedDefinitionProvider <- lookupMaybeFromJSON
                                        "definitionProvider"
                                        vs
           parsedTypeDefinitionProvider <- lookupMaybeFromJSON
                                            "typeDefinitionProvider"
                                            vs
           parsedImplementationProvider <- lookupMaybeFromJSON
                                            "implementationProvider"
                                            vs
           parsedReferencesProvider <- lookupMaybeFromJSON
                                        "referencesProvider"
                                        vs
           parsedDocumentHighlightProvider <- lookupMaybeFromJSON
                                               "documentHighlightProvider"
                                               vs
           parsedDocumentSymbolProvider <- lookupMaybeFromJSON
                                            "documentSymbolProvider"
                                            vs
           parsedCodeActionProvider <- lookupMaybeFromJSON
                                        "codeActionProvider"
                                        vs
           parsedCodeLensProvider <- lookupMaybeFromJSON "codeLensProvider" vs
           parsedDocumentLinkProvider <- lookupMaybeFromJSON
                                          "documentLinkProvider"
                                          vs
           parsedColorProvider <- lookupMaybeFromJSON "colorProvider" vs
           parsedWorkspaceSymbolProvider <- lookupMaybeFromJSON
                                             "workspaceSymbolProvider"
                                             vs
           parsedDocumentFormattingProvider <- lookupMaybeFromJSON
                                                "documentFormattingProvider"
                                                vs
           parsedDocumentRangeFormattingProvider <- lookupMaybeFromJSON
                                                     "documentRangeFormattingProvider"
                                                     vs
           parsedDocumentOnTypeFormattingProvider <- lookupMaybeFromJSON
                                                      "documentOnTypeFormattingProvider"
                                                      vs
           parsedRenameProvider <- lookupMaybeFromJSON "renameProvider" vs
           parsedFoldingRangeProvider <- lookupMaybeFromJSON
                                          "foldingRangeProvider"
                                          vs
           parsedSelectionRangeProvider <- lookupMaybeFromJSON
                                            "selectionRangeProvider"
                                            vs
           parsedExecuteCommandProvider <- lookupMaybeFromJSON
                                            "executeCommandProvider"
                                            vs
           parsedCallHierarchyProvider <- lookupMaybeFromJSON
                                           "callHierarchyProvider"
                                           vs
           parsedLinkedEditingRangeProvider <- lookupMaybeFromJSON
                                                "linkedEditingRangeProvider"
                                                vs
           parsedSemanticTokensProvider <- lookupMaybeFromJSON
                                            "semanticTokensProvider"
                                            vs
           parsedMonikerProvider <- lookupMaybeFromJSON "monikerProvider" vs
           parsedTypeHierarchyProvider <- lookupMaybeFromJSON
                                           "typeHierarchyProvider"
                                           vs
           parsedInlineValueProvider <- lookupMaybeFromJSON
                                         "inlineValueProvider"
                                         vs
           parsedInlayHintProvider <- lookupMaybeFromJSON "inlayHintProvider"
                                       vs
           parsedDiagnosticProvider <- lookupMaybeFromJSON
                                        "diagnosticProvider"
                                        vs
           parsedInlineCompletionProvider <- lookupMaybeFromJSON
                                              "inlineCompletionProvider"
                                              vs
           parsedWorkspace <- lookupMaybeFromJSON "workspace" vs
           parsedExperimental <- lookupMaybeFromJSON "experimental" vs
           return
            ServerCapabilities { serverCapabilitiesPositionEncoding = parsedPositionEncoding
                               , serverCapabilitiesTextDocumentSync = parsedTextDocumentSync
                               , serverCapabilitiesNotebookDocumentSync = parsedNotebookDocumentSync
                               , serverCapabilitiesCompletionProvider = parsedCompletionProvider
                               , serverCapabilitiesHoverProvider = parsedHoverProvider
                               , serverCapabilitiesSignatureHelpProvider = parsedSignatureHelpProvider
                               , serverCapabilitiesDeclarationProvider = parsedDeclarationProvider
                               , serverCapabilitiesDefinitionProvider = parsedDefinitionProvider
                               , serverCapabilitiesTypeDefinitionProvider = parsedTypeDefinitionProvider
                               , serverCapabilitiesImplementationProvider = parsedImplementationProvider
                               , serverCapabilitiesReferencesProvider = parsedReferencesProvider
                               , serverCapabilitiesDocumentHighlightProvider = parsedDocumentHighlightProvider
                               , serverCapabilitiesDocumentSymbolProvider = parsedDocumentSymbolProvider
                               , serverCapabilitiesCodeActionProvider = parsedCodeActionProvider
                               , serverCapabilitiesCodeLensProvider = parsedCodeLensProvider
                               , serverCapabilitiesDocumentLinkProvider = parsedDocumentLinkProvider
                               , serverCapabilitiesColorProvider = parsedColorProvider
                               , serverCapabilitiesWorkspaceSymbolProvider = parsedWorkspaceSymbolProvider
                               , serverCapabilitiesDocumentFormattingProvider = parsedDocumentFormattingProvider
                               , serverCapabilitiesDocumentRangeFormattingProvider = parsedDocumentRangeFormattingProvider
                               , serverCapabilitiesDocumentOnTypeFormattingProvider = parsedDocumentOnTypeFormattingProvider
                               , serverCapabilitiesRenameProvider = parsedRenameProvider
                               , serverCapabilitiesFoldingRangeProvider = parsedFoldingRangeProvider
                               , serverCapabilitiesSelectionRangeProvider = parsedSelectionRangeProvider
                               , serverCapabilitiesExecuteCommandProvider = parsedExecuteCommandProvider
                               , serverCapabilitiesCallHierarchyProvider = parsedCallHierarchyProvider
                               , serverCapabilitiesLinkedEditingRangeProvider = parsedLinkedEditingRangeProvider
                               , serverCapabilitiesSemanticTokensProvider = parsedSemanticTokensProvider
                               , serverCapabilitiesMonikerProvider = parsedMonikerProvider
                               , serverCapabilitiesTypeHierarchyProvider = parsedTypeHierarchyProvider
                               , serverCapabilitiesInlineValueProvider = parsedInlineValueProvider
                               , serverCapabilitiesInlayHintProvider = parsedInlayHintProvider
                               , serverCapabilitiesDiagnosticProvider = parsedDiagnosticProvider
                               , serverCapabilitiesInlineCompletionProvider = parsedInlineCompletionProvider
                               , serverCapabilitiesWorkspace = parsedWorkspace
                               , serverCapabilitiesExperimental = parsedExperimental }
      _ -> Left ("Unrecognized ServerCapabilities value: " ++ ppJSON j)

data ServerCapabilities = ServerCapabilities { serverCapabilitiesPositionEncoding :: Maybe PositionEncodingKind
                                             , serverCapabilitiesTextDocumentSync :: Maybe (Either TextDocumentSyncOptions TextDocumentSyncKind)
                                             , serverCapabilitiesNotebookDocumentSync :: Maybe (Either NotebookDocumentSyncOptions NotebookDocumentSyncRegistrationOptions)
                                             , serverCapabilitiesCompletionProvider :: Maybe CompletionOptions
                                             , serverCapabilitiesHoverProvider :: Maybe (Either Bool HoverOptions)
                                             , serverCapabilitiesSignatureHelpProvider :: Maybe SignatureHelpOptions
                                             , serverCapabilitiesDeclarationProvider :: Maybe (Either (Either Bool DeclarationOptions) DeclarationRegistrationOptions)
                                             , serverCapabilitiesDefinitionProvider :: Maybe (Either Bool DefinitionOptions)
                                             , serverCapabilitiesTypeDefinitionProvider :: Maybe (Either (Either Bool TypeDefinitionOptions) TypeDefinitionRegistrationOptions)
                                             , serverCapabilitiesImplementationProvider :: Maybe (Either (Either Bool ImplementationOptions) ImplementationRegistrationOptions)
                                             , serverCapabilitiesReferencesProvider :: Maybe (Either Bool ReferenceOptions)
                                             , serverCapabilitiesDocumentHighlightProvider :: Maybe (Either Bool DocumentHighlightOptions)
                                             , serverCapabilitiesDocumentSymbolProvider :: Maybe (Either Bool DocumentSymbolOptions)
                                             , serverCapabilitiesCodeActionProvider :: Maybe (Either Bool CodeActionOptions)
                                             , serverCapabilitiesCodeLensProvider :: Maybe CodeLensOptions
                                             , serverCapabilitiesDocumentLinkProvider :: Maybe DocumentLinkOptions
                                             , serverCapabilitiesColorProvider :: Maybe (Either (Either Bool DocumentColorOptions) DocumentColorRegistrationOptions)
                                             , serverCapabilitiesWorkspaceSymbolProvider :: Maybe (Either Bool WorkspaceSymbolOptions)
                                             , serverCapabilitiesDocumentFormattingProvider :: Maybe (Either Bool DocumentFormattingOptions)
                                             , serverCapabilitiesDocumentRangeFormattingProvider :: Maybe (Either Bool DocumentRangeFormattingOptions)
                                             , serverCapabilitiesDocumentOnTypeFormattingProvider :: Maybe DocumentOnTypeFormattingOptions
                                             , serverCapabilitiesRenameProvider :: Maybe (Either Bool RenameOptions)
                                             , serverCapabilitiesFoldingRangeProvider :: Maybe (Either (Either Bool FoldingRangeOptions) FoldingRangeRegistrationOptions)
                                             , serverCapabilitiesSelectionRangeProvider :: Maybe (Either (Either Bool SelectionRangeOptions) SelectionRangeRegistrationOptions)
                                             , serverCapabilitiesExecuteCommandProvider :: Maybe ExecuteCommandOptions
                                             , serverCapabilitiesCallHierarchyProvider :: Maybe (Either (Either Bool CallHierarchyOptions) CallHierarchyRegistrationOptions)
                                             , serverCapabilitiesLinkedEditingRangeProvider :: Maybe (Either (Either Bool LinkedEditingRangeOptions) LinkedEditingRangeRegistrationOptions)
                                             , serverCapabilitiesSemanticTokensProvider :: Maybe (Either SemanticTokensOptions SemanticTokensRegistrationOptions)
                                             , serverCapabilitiesMonikerProvider :: Maybe (Either (Either Bool MonikerOptions) MonikerRegistrationOptions)
                                             , serverCapabilitiesTypeHierarchyProvider :: Maybe (Either (Either Bool TypeHierarchyOptions) TypeHierarchyRegistrationOptions)
                                             , serverCapabilitiesInlineValueProvider :: Maybe (Either (Either Bool InlineValueOptions) InlineValueRegistrationOptions)
                                             , serverCapabilitiesInlayHintProvider :: Maybe (Either (Either Bool InlayHintOptions) InlayHintRegistrationOptions)
                                             , serverCapabilitiesDiagnosticProvider :: Maybe (Either DiagnosticOptions DiagnosticRegistrationOptions)
                                             , serverCapabilitiesInlineCompletionProvider :: Maybe (Either Bool InlineCompletionOptions)
                                             , serverCapabilitiesWorkspace :: Maybe WorkspaceOptions
                                             , serverCapabilitiesExperimental :: Maybe LSPAny }
 deriving (Show,Eq)

