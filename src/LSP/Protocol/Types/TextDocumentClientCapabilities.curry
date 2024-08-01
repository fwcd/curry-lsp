-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CallHierarchyClientCapabilities
import LSP.Protocol.Types.CodeActionClientCapabilities
import LSP.Protocol.Types.CodeLensClientCapabilities
import LSP.Protocol.Types.CompletionClientCapabilities
import LSP.Protocol.Types.DeclarationClientCapabilities
import LSP.Protocol.Types.DefinitionClientCapabilities
import LSP.Protocol.Types.DiagnosticClientCapabilities
import LSP.Protocol.Types.DocumentColorClientCapabilities
import LSP.Protocol.Types.DocumentFormattingClientCapabilities
import LSP.Protocol.Types.DocumentHighlightClientCapabilities
import LSP.Protocol.Types.DocumentLinkClientCapabilities
import LSP.Protocol.Types.DocumentOnTypeFormattingClientCapabilities
import LSP.Protocol.Types.DocumentRangeFormattingClientCapabilities
import LSP.Protocol.Types.DocumentSymbolClientCapabilities
import LSP.Protocol.Types.FoldingRangeClientCapabilities
import LSP.Protocol.Types.HoverClientCapabilities
import LSP.Protocol.Types.ImplementationClientCapabilities
import LSP.Protocol.Types.InlayHintClientCapabilities
import LSP.Protocol.Types.InlineCompletionClientCapabilities
import LSP.Protocol.Types.InlineValueClientCapabilities
import LSP.Protocol.Types.LinkedEditingRangeClientCapabilities
import LSP.Protocol.Types.MonikerClientCapabilities
import LSP.Protocol.Types.PublishDiagnosticsClientCapabilities
import LSP.Protocol.Types.ReferenceClientCapabilities
import LSP.Protocol.Types.RenameClientCapabilities
import LSP.Protocol.Types.SelectionRangeClientCapabilities
import LSP.Protocol.Types.SemanticTokensClientCapabilities
import LSP.Protocol.Types.SignatureHelpClientCapabilities
import LSP.Protocol.Types.TextDocumentSyncClientCapabilities
import LSP.Protocol.Types.TypeDefinitionClientCapabilities
import LSP.Protocol.Types.TypeHierarchyClientCapabilities
import LSP.Utils.JSON

instance FromJSON TextDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSynchronization <- lookupMaybeFromJSON "synchronization" vs
           parsedCompletion <- lookupMaybeFromJSON "completion" vs
           parsedHover <- lookupMaybeFromJSON "hover" vs
           parsedSignatureHelp <- lookupMaybeFromJSON "signatureHelp" vs
           parsedDeclaration <- lookupMaybeFromJSON "declaration" vs
           parsedDefinition <- lookupMaybeFromJSON "definition" vs
           parsedTypeDefinition <- lookupMaybeFromJSON "typeDefinition" vs
           parsedImplementation <- lookupMaybeFromJSON "implementation" vs
           parsedReferences <- lookupMaybeFromJSON "references" vs
           parsedDocumentHighlight <- lookupMaybeFromJSON "documentHighlight"
                                       vs
           parsedDocumentSymbol <- lookupMaybeFromJSON "documentSymbol" vs
           parsedCodeAction <- lookupMaybeFromJSON "codeAction" vs
           parsedCodeLens <- lookupMaybeFromJSON "codeLens" vs
           parsedDocumentLink <- lookupMaybeFromJSON "documentLink" vs
           parsedColorProvider <- lookupMaybeFromJSON "colorProvider" vs
           parsedFormatting <- lookupMaybeFromJSON "formatting" vs
           parsedRangeFormatting <- lookupMaybeFromJSON "rangeFormatting" vs
           parsedOnTypeFormatting <- lookupMaybeFromJSON "onTypeFormatting" vs
           parsedRename <- lookupMaybeFromJSON "rename" vs
           parsedFoldingRange <- lookupMaybeFromJSON "foldingRange" vs
           parsedSelectionRange <- lookupMaybeFromJSON "selectionRange" vs
           parsedPublishDiagnostics <- lookupMaybeFromJSON
                                        "publishDiagnostics"
                                        vs
           parsedCallHierarchy <- lookupMaybeFromJSON "callHierarchy" vs
           parsedSemanticTokens <- lookupMaybeFromJSON "semanticTokens" vs
           parsedLinkedEditingRange <- lookupMaybeFromJSON
                                        "linkedEditingRange"
                                        vs
           parsedMoniker <- lookupMaybeFromJSON "moniker" vs
           parsedTypeHierarchy <- lookupMaybeFromJSON "typeHierarchy" vs
           parsedInlineValue <- lookupMaybeFromJSON "inlineValue" vs
           parsedInlayHint <- lookupMaybeFromJSON "inlayHint" vs
           parsedDiagnostic <- lookupMaybeFromJSON "diagnostic" vs
           parsedInlineCompletion <- lookupMaybeFromJSON "inlineCompletion" vs
           return
            TextDocumentClientCapabilities { textDocumentClientCapabilitiesSynchronization = parsedSynchronization
                                           , textDocumentClientCapabilitiesCompletion = parsedCompletion
                                           , textDocumentClientCapabilitiesHover = parsedHover
                                           , textDocumentClientCapabilitiesSignatureHelp = parsedSignatureHelp
                                           , textDocumentClientCapabilitiesDeclaration = parsedDeclaration
                                           , textDocumentClientCapabilitiesDefinition = parsedDefinition
                                           , textDocumentClientCapabilitiesTypeDefinition = parsedTypeDefinition
                                           , textDocumentClientCapabilitiesImplementation = parsedImplementation
                                           , textDocumentClientCapabilitiesReferences = parsedReferences
                                           , textDocumentClientCapabilitiesDocumentHighlight = parsedDocumentHighlight
                                           , textDocumentClientCapabilitiesDocumentSymbol = parsedDocumentSymbol
                                           , textDocumentClientCapabilitiesCodeAction = parsedCodeAction
                                           , textDocumentClientCapabilitiesCodeLens = parsedCodeLens
                                           , textDocumentClientCapabilitiesDocumentLink = parsedDocumentLink
                                           , textDocumentClientCapabilitiesColorProvider = parsedColorProvider
                                           , textDocumentClientCapabilitiesFormatting = parsedFormatting
                                           , textDocumentClientCapabilitiesRangeFormatting = parsedRangeFormatting
                                           , textDocumentClientCapabilitiesOnTypeFormatting = parsedOnTypeFormatting
                                           , textDocumentClientCapabilitiesRename = parsedRename
                                           , textDocumentClientCapabilitiesFoldingRange = parsedFoldingRange
                                           , textDocumentClientCapabilitiesSelectionRange = parsedSelectionRange
                                           , textDocumentClientCapabilitiesPublishDiagnostics = parsedPublishDiagnostics
                                           , textDocumentClientCapabilitiesCallHierarchy = parsedCallHierarchy
                                           , textDocumentClientCapabilitiesSemanticTokens = parsedSemanticTokens
                                           , textDocumentClientCapabilitiesLinkedEditingRange = parsedLinkedEditingRange
                                           , textDocumentClientCapabilitiesMoniker = parsedMoniker
                                           , textDocumentClientCapabilitiesTypeHierarchy = parsedTypeHierarchy
                                           , textDocumentClientCapabilitiesInlineValue = parsedInlineValue
                                           , textDocumentClientCapabilitiesInlayHint = parsedInlayHint
                                           , textDocumentClientCapabilitiesDiagnostic = parsedDiagnostic
                                           , textDocumentClientCapabilitiesInlineCompletion = parsedInlineCompletion }
      _ ->
        Left
         ("Unrecognized TextDocumentClientCapabilities value: " ++ ppJSON j)

data TextDocumentClientCapabilities = TextDocumentClientCapabilities { textDocumentClientCapabilitiesSynchronization :: Maybe TextDocumentSyncClientCapabilities
                                                                     , textDocumentClientCapabilitiesCompletion :: Maybe CompletionClientCapabilities
                                                                     , textDocumentClientCapabilitiesHover :: Maybe HoverClientCapabilities
                                                                     , textDocumentClientCapabilitiesSignatureHelp :: Maybe SignatureHelpClientCapabilities
                                                                     , textDocumentClientCapabilitiesDeclaration :: Maybe DeclarationClientCapabilities
                                                                     , textDocumentClientCapabilitiesDefinition :: Maybe DefinitionClientCapabilities
                                                                     , textDocumentClientCapabilitiesTypeDefinition :: Maybe TypeDefinitionClientCapabilities
                                                                     , textDocumentClientCapabilitiesImplementation :: Maybe ImplementationClientCapabilities
                                                                     , textDocumentClientCapabilitiesReferences :: Maybe ReferenceClientCapabilities
                                                                     , textDocumentClientCapabilitiesDocumentHighlight :: Maybe DocumentHighlightClientCapabilities
                                                                     , textDocumentClientCapabilitiesDocumentSymbol :: Maybe DocumentSymbolClientCapabilities
                                                                     , textDocumentClientCapabilitiesCodeAction :: Maybe CodeActionClientCapabilities
                                                                     , textDocumentClientCapabilitiesCodeLens :: Maybe CodeLensClientCapabilities
                                                                     , textDocumentClientCapabilitiesDocumentLink :: Maybe DocumentLinkClientCapabilities
                                                                     , textDocumentClientCapabilitiesColorProvider :: Maybe DocumentColorClientCapabilities
                                                                     , textDocumentClientCapabilitiesFormatting :: Maybe DocumentFormattingClientCapabilities
                                                                     , textDocumentClientCapabilitiesRangeFormatting :: Maybe DocumentRangeFormattingClientCapabilities
                                                                     , textDocumentClientCapabilitiesOnTypeFormatting :: Maybe DocumentOnTypeFormattingClientCapabilities
                                                                     , textDocumentClientCapabilitiesRename :: Maybe RenameClientCapabilities
                                                                     , textDocumentClientCapabilitiesFoldingRange :: Maybe FoldingRangeClientCapabilities
                                                                     , textDocumentClientCapabilitiesSelectionRange :: Maybe SelectionRangeClientCapabilities
                                                                     , textDocumentClientCapabilitiesPublishDiagnostics :: Maybe PublishDiagnosticsClientCapabilities
                                                                     , textDocumentClientCapabilitiesCallHierarchy :: Maybe CallHierarchyClientCapabilities
                                                                     , textDocumentClientCapabilitiesSemanticTokens :: Maybe SemanticTokensClientCapabilities
                                                                     , textDocumentClientCapabilitiesLinkedEditingRange :: Maybe LinkedEditingRangeClientCapabilities
                                                                     , textDocumentClientCapabilitiesMoniker :: Maybe MonikerClientCapabilities
                                                                     , textDocumentClientCapabilitiesTypeHierarchy :: Maybe TypeHierarchyClientCapabilities
                                                                     , textDocumentClientCapabilitiesInlineValue :: Maybe InlineValueClientCapabilities
                                                                     , textDocumentClientCapabilitiesInlayHint :: Maybe InlayHintClientCapabilities
                                                                     , textDocumentClientCapabilitiesDiagnostic :: Maybe DiagnosticClientCapabilities
                                                                     , textDocumentClientCapabilitiesInlineCompletion :: Maybe InlineCompletionClientCapabilities }
 deriving (Show,Eq)

