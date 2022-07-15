-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol.Types where

import LSP.Utils.JSON
import LSP.Protocol.Support
import Data.Map
import JSON.Data

instance FromJSON ImplementationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ImplementationParams value"

instance FromJSON Location where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Location value"

instance FromJSON ImplementationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ImplementationRegistrationOptions value"

instance FromJSON TypeDefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeDefinitionParams value"

instance FromJSON TypeDefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeDefinitionRegistrationOptions value"

instance FromJSON WorkspaceFolder where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceFolder value"

instance FromJSON DidChangeWorkspaceFoldersParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeWorkspaceFoldersParams value"

instance FromJSON ConfigurationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ConfigurationParams value"

instance FromJSON PartialResultParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized PartialResultParams value"

instance FromJSON DocumentColorParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentColorParams value"

instance FromJSON ColorInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ColorInformation value"

instance FromJSON DocumentColorRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentColorRegistrationOptions value"

instance FromJSON ColorPresentationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ColorPresentationParams value"

instance FromJSON ColorPresentation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ColorPresentation value"

instance FromJSON WorkDoneProgressOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressOptions value"

instance FromJSON TextDocumentRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentRegistrationOptions value"

instance FromJSON FoldingRangeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FoldingRangeParams value"

instance FromJSON FoldingRange where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FoldingRange value"

instance FromJSON FoldingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FoldingRangeRegistrationOptions value"

instance FromJSON DeclarationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeclarationParams value"

instance FromJSON DeclarationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeclarationRegistrationOptions value"

instance FromJSON SelectionRangeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SelectionRangeParams value"

instance FromJSON SelectionRange where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SelectionRange value"

instance FromJSON SelectionRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SelectionRangeRegistrationOptions value"

instance FromJSON WorkDoneProgressCreateParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressCreateParams value"

instance FromJSON WorkDoneProgressCancelParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressCancelParams value"

instance FromJSON CallHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyPrepareParams value"

instance FromJSON CallHierarchyItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyItem value"

instance FromJSON CallHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyRegistrationOptions value"

instance FromJSON CallHierarchyIncomingCallsParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyIncomingCallsParams value"

instance FromJSON CallHierarchyIncomingCall where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyIncomingCall value"

instance FromJSON CallHierarchyOutgoingCallsParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyOutgoingCallsParams value"

instance FromJSON CallHierarchyOutgoingCall where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyOutgoingCall value"

instance FromJSON SemanticTokensParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensParams value"

instance FromJSON SemanticTokens where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokens value"

instance FromJSON SemanticTokensPartialResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensPartialResult value"

instance FromJSON SemanticTokensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensRegistrationOptions value"

instance FromJSON SemanticTokensDeltaParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensDeltaParams value"

instance FromJSON SemanticTokensDelta where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensDelta value"

instance FromJSON SemanticTokensDeltaPartialResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensDeltaPartialResult value"

instance FromJSON SemanticTokensRangeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensRangeParams value"

instance FromJSON ShowDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowDocumentParams value"

instance FromJSON ShowDocumentResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowDocumentResult value"

instance FromJSON LinkedEditingRangeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LinkedEditingRangeParams value"

instance FromJSON LinkedEditingRanges where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LinkedEditingRanges value"

instance FromJSON LinkedEditingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LinkedEditingRangeRegistrationOptions value"

instance FromJSON CreateFilesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CreateFilesParams value"

instance FromJSON WorkspaceEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceEdit value"

instance FromJSON FileOperationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationRegistrationOptions value"

instance FromJSON RenameFilesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameFilesParams value"

instance FromJSON DeleteFilesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeleteFilesParams value"

instance FromJSON MonikerParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MonikerParams value"

instance FromJSON Moniker where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Moniker value"

instance FromJSON MonikerRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MonikerRegistrationOptions value"

instance FromJSON TypeHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchyPrepareParams value"

instance FromJSON TypeHierarchyItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchyItem value"

instance FromJSON TypeHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchyRegistrationOptions value"

instance FromJSON TypeHierarchySupertypesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchySupertypesParams value"

instance FromJSON TypeHierarchySubtypesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchySubtypesParams value"

instance FromJSON InlineValueParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueParams value"

instance FromJSON InlineValueRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueRegistrationOptions value"

instance FromJSON InlayHintParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintParams value"

instance FromJSON InlayHint where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHint value"

instance FromJSON InlayHintRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintRegistrationOptions value"

instance FromJSON DocumentDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentDiagnosticParams value"

instance FromJSON DocumentDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentDiagnosticReportPartialResult value"

instance FromJSON DiagnosticServerCancellationData where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticServerCancellationData value"

instance FromJSON DiagnosticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticRegistrationOptions value"

instance FromJSON WorkspaceDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceDiagnosticParams value"

instance FromJSON WorkspaceDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceDiagnosticReport value"

instance FromJSON WorkspaceDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceDiagnosticReportPartialResult value"

instance FromJSON DidOpenNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidOpenNotebookDocumentParams value"

instance FromJSON DidChangeNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeNotebookDocumentParams value"

instance FromJSON DidSaveNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidSaveNotebookDocumentParams value"

instance FromJSON DidCloseNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidCloseNotebookDocumentParams value"

instance FromJSON RegistrationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RegistrationParams value"

instance FromJSON UnregistrationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized UnregistrationParams value"

instance FromJSON InitializeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InitializeParams value"

instance FromJSON InitializeResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InitializeResult value"

instance FromJSON InitializeError where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InitializeError value"

instance FromJSON InitializedParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InitializedParams value"

instance FromJSON DidChangeConfigurationParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeConfigurationParams value"

instance FromJSON DidChangeConfigurationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeConfigurationRegistrationOptions value"

instance FromJSON ShowMessageParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowMessageParams value"

instance FromJSON ShowMessageRequestParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowMessageRequestParams value"

instance FromJSON MessageActionItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MessageActionItem value"

instance FromJSON LogMessageParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LogMessageParams value"

instance FromJSON DidOpenTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidOpenTextDocumentParams value"

instance FromJSON DidChangeTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeTextDocumentParams value"

instance FromJSON TextDocumentChangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentChangeRegistrationOptions value"

instance FromJSON DidCloseTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidCloseTextDocumentParams value"

instance FromJSON DidSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidSaveTextDocumentParams value"

instance FromJSON TextDocumentSaveRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentSaveRegistrationOptions value"

instance FromJSON WillSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WillSaveTextDocumentParams value"

instance FromJSON TextEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextEdit value"

instance FromJSON DidChangeWatchedFilesParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeWatchedFilesParams value"

instance FromJSON DidChangeWatchedFilesRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeWatchedFilesRegistrationOptions value"

instance FromJSON PublishDiagnosticsParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized PublishDiagnosticsParams value"

instance FromJSON CompletionParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionParams value"

instance FromJSON CompletionItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionItem value"

instance FromJSON CompletionList where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionList value"

instance FromJSON CompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionRegistrationOptions value"

instance FromJSON HoverParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized HoverParams value"

instance FromJSON Hover where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Hover value"

instance FromJSON HoverRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized HoverRegistrationOptions value"

instance FromJSON SignatureHelpParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelpParams value"

instance FromJSON SignatureHelp where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelp value"

instance FromJSON SignatureHelpRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelpRegistrationOptions value"

instance FromJSON DefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DefinitionParams value"

instance FromJSON DefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DefinitionRegistrationOptions value"

instance FromJSON ReferenceParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ReferenceParams value"

instance FromJSON ReferenceRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ReferenceRegistrationOptions value"

instance FromJSON DocumentHighlightParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentHighlightParams value"

instance FromJSON DocumentHighlight where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentHighlight value"

instance FromJSON DocumentHighlightRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentHighlightRegistrationOptions value"

instance FromJSON DocumentSymbolParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentSymbolParams value"

instance FromJSON SymbolInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SymbolInformation value"

instance FromJSON DocumentSymbol where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentSymbol value"

instance FromJSON DocumentSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentSymbolRegistrationOptions value"

instance FromJSON CodeActionParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeActionParams value"

instance FromJSON Command where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Command value"

instance FromJSON CodeAction where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeAction value"

instance FromJSON CodeActionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeActionRegistrationOptions value"

instance FromJSON WorkspaceSymbolParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceSymbolParams value"

instance FromJSON WorkspaceSymbol where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceSymbol value"

instance FromJSON WorkspaceSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceSymbolRegistrationOptions value"

instance FromJSON CodeLensParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLensParams value"

instance FromJSON CodeLens where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLens value"

instance FromJSON CodeLensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLensRegistrationOptions value"

instance FromJSON DocumentLinkParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentLinkParams value"

instance FromJSON DocumentLink where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentLink value"

instance FromJSON DocumentLinkRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentLinkRegistrationOptions value"

instance FromJSON DocumentFormattingParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentFormattingParams value"

instance FromJSON DocumentFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentFormattingRegistrationOptions value"

instance FromJSON DocumentRangeFormattingParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentRangeFormattingParams value"

instance FromJSON DocumentRangeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ ->
        Left "Unrecognized DocumentRangeFormattingRegistrationOptions value"

instance FromJSON DocumentOnTypeFormattingParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentOnTypeFormattingParams value"

instance FromJSON DocumentOnTypeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ ->
        Left "Unrecognized DocumentOnTypeFormattingRegistrationOptions value"

instance FromJSON RenameParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameParams value"

instance FromJSON RenameRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameRegistrationOptions value"

instance FromJSON PrepareRenameParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized PrepareRenameParams value"

instance FromJSON ExecuteCommandParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ExecuteCommandParams value"

instance FromJSON ExecuteCommandRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ExecuteCommandRegistrationOptions value"

instance FromJSON ApplyWorkspaceEditParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ApplyWorkspaceEditParams value"

instance FromJSON ApplyWorkspaceEditResult where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ApplyWorkspaceEditResult value"

instance FromJSON WorkDoneProgressBegin where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressBegin value"

instance FromJSON WorkDoneProgressReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressReport value"

instance FromJSON WorkDoneProgressEnd where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressEnd value"

instance FromJSON SetTraceParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SetTraceParams value"

instance FromJSON LogTraceParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LogTraceParams value"

instance FromJSON CancelParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CancelParams value"

instance FromJSON ProgressParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ProgressParams value"

instance FromJSON TextDocumentPositionParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentPositionParams value"

instance FromJSON WorkDoneProgressParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkDoneProgressParams value"

instance FromJSON LocationLink where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LocationLink value"

instance FromJSON Range where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Range value"

instance FromJSON ImplementationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ImplementationOptions value"

instance FromJSON StaticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized StaticRegistrationOptions value"

instance FromJSON TypeDefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeDefinitionOptions value"

instance FromJSON WorkspaceFoldersChangeEvent where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceFoldersChangeEvent value"

instance FromJSON ConfigurationItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ConfigurationItem value"

instance FromJSON TextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentIdentifier value"

instance FromJSON Color where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Color value"

instance FromJSON DocumentColorOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentColorOptions value"

instance FromJSON FoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FoldingRangeOptions value"

instance FromJSON DeclarationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeclarationOptions value"

instance FromJSON Position where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Position value"

instance FromJSON SelectionRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SelectionRangeOptions value"

instance FromJSON CallHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyOptions value"

instance FromJSON SemanticTokensOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensOptions value"

instance FromJSON SemanticTokensEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensEdit value"

instance FromJSON LinkedEditingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LinkedEditingRangeOptions value"

instance FromJSON FileCreate where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileCreate value"

instance FromJSON TextDocumentEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentEdit value"

instance FromJSON CreateFile where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CreateFile value"

instance FromJSON RenameFile where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameFile value"

instance FromJSON DeleteFile where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeleteFile value"

instance FromJSON ChangeAnnotation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ChangeAnnotation value"

instance FromJSON FileOperationFilter where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationFilter value"

instance FromJSON FileRename where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileRename value"

instance FromJSON FileDelete where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileDelete value"

instance FromJSON MonikerOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MonikerOptions value"

instance FromJSON TypeHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchyOptions value"

instance FromJSON InlineValueContext where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueContext value"

instance FromJSON InlineValueText where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueText value"

instance FromJSON InlineValueVariableLookup where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueVariableLookup value"

instance FromJSON InlineValueEvaluatableExpression where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueEvaluatableExpression value"

instance FromJSON InlineValueOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueOptions value"

instance FromJSON InlayHintLabelPart where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintLabelPart value"

instance FromJSON MarkupContent where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MarkupContent value"

instance FromJSON InlayHintOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintOptions value"

instance FromJSON RelatedFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RelatedFullDocumentDiagnosticReport value"

instance FromJSON RelatedUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RelatedUnchangedDocumentDiagnosticReport value"

instance FromJSON FullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FullDocumentDiagnosticReport value"

instance FromJSON UnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized UnchangedDocumentDiagnosticReport value"

instance FromJSON DiagnosticOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticOptions value"

instance FromJSON PreviousResultId where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized PreviousResultId value"

instance FromJSON NotebookDocument where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocument value"

instance FromJSON TextDocumentItem where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentItem value"

instance FromJSON VersionedNotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized VersionedNotebookDocumentIdentifier value"

instance FromJSON NotebookDocumentChangeEvent where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentChangeEvent value"

instance FromJSON NotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentIdentifier value"

instance FromJSON Registration where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Registration value"

instance FromJSON Unregistration where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Unregistration value"

instance FromJSON BaseInitializeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized BaseInitializeParams value"

instance FromJSON WorkspaceFoldersInitializeParams where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceFoldersInitializeParams value"

instance FromJSON ServerCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ServerCapabilities value"

instance FromJSON VersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized VersionedTextDocumentIdentifier value"

instance FromJSON SaveOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SaveOptions value"

instance FromJSON FileEvent where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileEvent value"

instance FromJSON FileSystemWatcher where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileSystemWatcher value"

instance FromJSON Diagnostic where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized Diagnostic value"

instance FromJSON CompletionContext where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionContext value"

instance FromJSON CompletionItemLabelDetails where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionItemLabelDetails value"

instance FromJSON InsertReplaceEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InsertReplaceEdit value"

instance FromJSON CompletionOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionOptions value"

instance FromJSON HoverOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized HoverOptions value"

instance FromJSON SignatureHelpContext where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelpContext value"

instance FromJSON SignatureInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureInformation value"

instance FromJSON SignatureHelpOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelpOptions value"

instance FromJSON DefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DefinitionOptions value"

instance FromJSON ReferenceContext where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ReferenceContext value"

instance FromJSON ReferenceOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ReferenceOptions value"

instance FromJSON DocumentHighlightOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentHighlightOptions value"

instance FromJSON BaseSymbolInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized BaseSymbolInformation value"

instance FromJSON DocumentSymbolOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentSymbolOptions value"

instance FromJSON CodeActionContext where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeActionContext value"

instance FromJSON CodeActionOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeActionOptions value"

instance FromJSON WorkspaceSymbolOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceSymbolOptions value"

instance FromJSON CodeLensOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLensOptions value"

instance FromJSON DocumentLinkOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentLinkOptions value"

instance FromJSON FormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FormattingOptions value"

instance FromJSON DocumentFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentFormattingOptions value"

instance FromJSON DocumentRangeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentRangeFormattingOptions value"

instance FromJSON DocumentOnTypeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentOnTypeFormattingOptions value"

instance FromJSON RenameOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameOptions value"

instance FromJSON ExecuteCommandOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ExecuteCommandOptions value"

instance FromJSON SemanticTokensLegend where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensLegend value"

instance FromJSON OptionalVersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized OptionalVersionedTextDocumentIdentifier value"

instance FromJSON AnnotatedTextEdit where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized AnnotatedTextEdit value"

instance FromJSON ResourceOperation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ResourceOperation value"

instance FromJSON CreateFileOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CreateFileOptions value"

instance FromJSON RenameFileOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameFileOptions value"

instance FromJSON DeleteFileOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeleteFileOptions value"

instance FromJSON FileOperationPattern where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationPattern value"

instance FromJSON WorkspaceFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceFullDocumentDiagnosticReport value"

instance FromJSON WorkspaceUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ ->
        Left "Unrecognized WorkspaceUnchangedDocumentDiagnosticReport value"

instance FromJSON LSPObject where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LSPObject value"

instance FromJSON NotebookCell where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookCell value"

instance FromJSON NotebookCellArrayChange where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookCellArrayChange value"

instance FromJSON ClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ClientCapabilities value"

instance FromJSON TextDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentSyncOptions value"

instance FromJSON NotebookDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentSyncOptions value"

instance FromJSON NotebookDocumentSyncRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentSyncRegistrationOptions value"

instance FromJSON WorkspaceFoldersServerCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceFoldersServerCapabilities value"

instance FromJSON FileOperationOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationOptions value"

instance FromJSON CodeDescription where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeDescription value"

instance FromJSON DiagnosticRelatedInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticRelatedInformation value"

instance FromJSON ParameterInformation where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ParameterInformation value"

instance FromJSON NotebookCellTextDocumentFilter where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookCellTextDocumentFilter value"

instance FromJSON FileOperationPatternOptions where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationPatternOptions value"

instance FromJSON ExecutionSummary where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ExecutionSummary value"

instance FromJSON WorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceClientCapabilities value"

instance FromJSON TextDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentClientCapabilities value"

instance FromJSON NotebookDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentClientCapabilities value"

instance FromJSON WindowClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WindowClientCapabilities value"

instance FromJSON GeneralClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized GeneralClientCapabilities value"

instance FromJSON RelativePattern where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RelativePattern value"

instance FromJSON WorkspaceEditClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceEditClientCapabilities value"

instance FromJSON DidChangeConfigurationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeConfigurationClientCapabilities value"

instance FromJSON DidChangeWatchedFilesClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DidChangeWatchedFilesClientCapabilities value"

instance FromJSON WorkspaceSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized WorkspaceSymbolClientCapabilities value"

instance FromJSON ExecuteCommandClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ExecuteCommandClientCapabilities value"

instance FromJSON SemanticTokensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensWorkspaceClientCapabilities value"

instance FromJSON CodeLensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLensWorkspaceClientCapabilities value"

instance FromJSON FileOperationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FileOperationClientCapabilities value"

instance FromJSON InlineValueWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueWorkspaceClientCapabilities value"

instance FromJSON InlayHintWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintWorkspaceClientCapabilities value"

instance FromJSON DiagnosticWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticWorkspaceClientCapabilities value"

instance FromJSON TextDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TextDocumentSyncClientCapabilities value"

instance FromJSON CompletionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CompletionClientCapabilities value"

instance FromJSON HoverClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized HoverClientCapabilities value"

instance FromJSON SignatureHelpClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SignatureHelpClientCapabilities value"

instance FromJSON DeclarationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DeclarationClientCapabilities value"

instance FromJSON DefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DefinitionClientCapabilities value"

instance FromJSON TypeDefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeDefinitionClientCapabilities value"

instance FromJSON ImplementationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ImplementationClientCapabilities value"

instance FromJSON ReferenceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ReferenceClientCapabilities value"

instance FromJSON DocumentHighlightClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentHighlightClientCapabilities value"

instance FromJSON DocumentSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentSymbolClientCapabilities value"

instance FromJSON CodeActionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeActionClientCapabilities value"

instance FromJSON CodeLensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CodeLensClientCapabilities value"

instance FromJSON DocumentLinkClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentLinkClientCapabilities value"

instance FromJSON DocumentColorClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentColorClientCapabilities value"

instance FromJSON DocumentFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentFormattingClientCapabilities value"

instance FromJSON DocumentRangeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DocumentRangeFormattingClientCapabilities value"

instance FromJSON DocumentOnTypeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ ->
        Left "Unrecognized DocumentOnTypeFormattingClientCapabilities value"

instance FromJSON RenameClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RenameClientCapabilities value"

instance FromJSON FoldingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized FoldingRangeClientCapabilities value"

instance FromJSON SelectionRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SelectionRangeClientCapabilities value"

instance FromJSON PublishDiagnosticsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized PublishDiagnosticsClientCapabilities value"

instance FromJSON CallHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized CallHierarchyClientCapabilities value"

instance FromJSON SemanticTokensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized SemanticTokensClientCapabilities value"

instance FromJSON LinkedEditingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized LinkedEditingRangeClientCapabilities value"

instance FromJSON MonikerClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MonikerClientCapabilities value"

instance FromJSON TypeHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized TypeHierarchyClientCapabilities value"

instance FromJSON InlineValueClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlineValueClientCapabilities value"

instance FromJSON InlayHintClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized InlayHintClientCapabilities value"

instance FromJSON DiagnosticClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized DiagnosticClientCapabilities value"

instance FromJSON NotebookDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized NotebookDocumentSyncClientCapabilities value"

instance FromJSON ShowMessageRequestClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowMessageRequestClientCapabilities value"

instance FromJSON ShowDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized ShowDocumentClientCapabilities value"

instance FromJSON RegularExpressionsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized RegularExpressionsClientCapabilities value"

instance FromJSON MarkdownClientCapabilities where
  fromJSON j =
    case j of
      JObject vs -> error "TODO"
      _ -> Left "Unrecognized MarkdownClientCapabilities value"

data ImplementationParams = ImplementationParams {  }
 deriving (Show,Eq)

data Location = Location { locationUri :: DocumentUri
                         , locationRange :: Range }
 deriving (Show,Eq)

data ImplementationRegistrationOptions = ImplementationRegistrationOptions {  }
 deriving (Show,Eq)

data TypeDefinitionParams = TypeDefinitionParams {  }
 deriving (Show,Eq)

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceFolder = WorkspaceFolder { workspaceFolderUri :: URI
                                       , workspaceFolderName :: String }
 deriving (Show,Eq)

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent :: WorkspaceFoldersChangeEvent }
 deriving (Show,Eq)

data ConfigurationParams = ConfigurationParams { configurationParamsItems :: [ConfigurationItem] }
 deriving (Show,Eq)

data PartialResultParams = PartialResultParams { partialResultParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

data DocumentColorParams = DocumentColorParams { documentColorParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data ColorInformation = ColorInformation { colorInformationRange :: Range
                                         , colorInformationColor :: Color }
 deriving (Show,Eq)

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions {  }
 deriving (Show,Eq)

data ColorPresentationParams = ColorPresentationParams { colorPresentationParamsTextDocument :: TextDocumentIdentifier
                                                       , colorPresentationParamsColor :: Color
                                                       , colorPresentationParamsRange :: Range }
 deriving (Show,Eq)

data ColorPresentation = ColorPresentation { colorPresentationLabel :: String
                                           , colorPresentationTextEdit :: Maybe TextEdit
                                           , colorPresentationAdditionalTextEdits :: Maybe [TextEdit] }
 deriving (Show,Eq)

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

data TextDocumentRegistrationOptions = TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector :: Either DocumentSelector () }
 deriving (Show,Eq)

data FoldingRangeParams = FoldingRangeParams { foldingRangeParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data FoldingRange = FoldingRange { foldingRangeStartLine :: Int
                                 , foldingRangeStartCharacter :: Maybe Int
                                 , foldingRangeEndLine :: Int
                                 , foldingRangeEndCharacter :: Maybe Int
                                 , foldingRangeKind :: Maybe FoldingRangeKind
                                 , foldingRangeCollapsedText :: Maybe String }
 deriving (Show,Eq)

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions {  }
 deriving (Show,Eq)

data DeclarationParams = DeclarationParams {  }
 deriving (Show,Eq)

data DeclarationRegistrationOptions = DeclarationRegistrationOptions {  }
 deriving (Show,Eq)

data SelectionRangeParams = SelectionRangeParams { selectionRangeParamsTextDocument :: TextDocumentIdentifier
                                                 , selectionRangeParamsPositions :: [Position] }
 deriving (Show,Eq)

data SelectionRange = SelectionRange { selectionRangeRange :: Range
                                     , selectionRangeParent :: Maybe SelectionRange }
 deriving (Show,Eq)

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions {  }
 deriving (Show,Eq)

data WorkDoneProgressCreateParams = WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken :: ProgressToken }
 deriving (Show,Eq)

data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken :: ProgressToken }
 deriving (Show,Eq)

data CallHierarchyPrepareParams = CallHierarchyPrepareParams {  }
 deriving (Show,Eq)

data CallHierarchyItem = CallHierarchyItem { callHierarchyItemName :: String
                                           , callHierarchyItemKind :: SymbolKind
                                           , callHierarchyItemTags :: Maybe [SymbolTag]
                                           , callHierarchyItemDetail :: Maybe String
                                           , callHierarchyItemUri :: DocumentUri
                                           , callHierarchyItemRange :: Range
                                           , callHierarchyItemSelectionRange :: Range
                                           , callHierarchyItemData :: Maybe LSPAny }
 deriving (Show,Eq)

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions {  }
 deriving (Show,Eq)

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

data CallHierarchyIncomingCall = CallHierarchyIncomingCall { callHierarchyIncomingCallFrom :: CallHierarchyItem
                                                           , callHierarchyIncomingCallFromRanges :: [Range] }
 deriving (Show,Eq)

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem :: CallHierarchyItem }
 deriving (Show,Eq)

data CallHierarchyOutgoingCall = CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo :: CallHierarchyItem
                                                           , callHierarchyOutgoingCallFromRanges :: [Range] }
 deriving (Show,Eq)

data SemanticTokensParams = SemanticTokensParams { semanticTokensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data SemanticTokens = SemanticTokens { semanticTokensResultId :: Maybe String
                                     , semanticTokensData :: [Int] }
 deriving (Show,Eq)

data SemanticTokensPartialResult = SemanticTokensPartialResult { semanticTokensPartialResultData :: [Int] }
 deriving (Show,Eq)

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions {  }
 deriving (Show,Eq)

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensDeltaParamsPreviousResultId :: String }
 deriving (Show,Eq)

data SemanticTokensDelta = SemanticTokensDelta { semanticTokensDeltaResultId :: Maybe String
                                               , semanticTokensDeltaEdits :: [SemanticTokensEdit] }
 deriving (Show,Eq)

data SemanticTokensDeltaPartialResult = SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits :: [SemanticTokensEdit] }
 deriving (Show,Eq)

data SemanticTokensRangeParams = SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensRangeParamsRange :: Range }
 deriving (Show,Eq)

data ShowDocumentParams = ShowDocumentParams { showDocumentParamsUri :: URI
                                             , showDocumentParamsExternal :: Maybe Bool
                                             , showDocumentParamsTakeFocus :: Maybe Bool
                                             , showDocumentParamsSelection :: Maybe Range }
 deriving (Show,Eq)

data ShowDocumentResult = ShowDocumentResult { showDocumentResultSuccess :: Bool }
 deriving (Show,Eq)

data LinkedEditingRangeParams = LinkedEditingRangeParams {  }
 deriving (Show,Eq)

data LinkedEditingRanges = LinkedEditingRanges { linkedEditingRangesRanges :: [Range]
                                               , linkedEditingRangesWordPattern :: Maybe String }
 deriving (Show,Eq)

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions {  }
 deriving (Show,Eq)

data CreateFilesParams = CreateFilesParams { createFilesParamsFiles :: [FileCreate] }
 deriving (Show,Eq)

data WorkspaceEdit = WorkspaceEdit { workspaceEditChanges :: Maybe (Map DocumentUri [TextEdit])
                                   , workspaceEditDocumentChanges :: Maybe [Either (Either (Either TextDocumentEdit CreateFile) RenameFile) DeleteFile]
                                   , workspaceEditChangeAnnotations :: Maybe (Map ChangeAnnotationIdentifier ChangeAnnotation) }
 deriving (Show,Eq)

data FileOperationRegistrationOptions = FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters :: [FileOperationFilter] }
 deriving (Show,Eq)

data RenameFilesParams = RenameFilesParams { renameFilesParamsFiles :: [FileRename] }
 deriving (Show,Eq)

data DeleteFilesParams = DeleteFilesParams { deleteFilesParamsFiles :: [FileDelete] }
 deriving (Show,Eq)

data MonikerParams = MonikerParams {  }
 deriving (Show,Eq)

data Moniker = Moniker { monikerScheme :: String
                       , monikerIdentifier :: String
                       , monikerUnique :: UniquenessLevel
                       , monikerKind :: Maybe MonikerKind }
 deriving (Show,Eq)

data MonikerRegistrationOptions = MonikerRegistrationOptions {  }
 deriving (Show,Eq)

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams {  }
 deriving (Show,Eq)

data TypeHierarchyItem = TypeHierarchyItem { typeHierarchyItemName :: String
                                           , typeHierarchyItemKind :: SymbolKind
                                           , typeHierarchyItemTags :: Maybe [SymbolTag]
                                           , typeHierarchyItemDetail :: Maybe String
                                           , typeHierarchyItemUri :: DocumentUri
                                           , typeHierarchyItemRange :: Range
                                           , typeHierarchyItemSelectionRange :: Range
                                           , typeHierarchyItemData :: Maybe LSPAny }
 deriving (Show,Eq)

data TypeHierarchyRegistrationOptions = TypeHierarchyRegistrationOptions {  }
 deriving (Show,Eq)

data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

data TypeHierarchySubtypesParams = TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem :: TypeHierarchyItem }
 deriving (Show,Eq)

data InlineValueParams = InlineValueParams { inlineValueParamsTextDocument :: TextDocumentIdentifier
                                           , inlineValueParamsRange :: Range
                                           , inlineValueParamsContext :: InlineValueContext }
 deriving (Show,Eq)

data InlineValueRegistrationOptions = InlineValueRegistrationOptions {  }
 deriving (Show,Eq)

data InlayHintParams = InlayHintParams { inlayHintParamsTextDocument :: TextDocumentIdentifier
                                       , inlayHintParamsRange :: Range }
 deriving (Show,Eq)

data InlayHint = InlayHint { inlayHintPosition :: Position
                           , inlayHintLabel :: Either String [InlayHintLabelPart]
                           , inlayHintKind :: Maybe InlayHintKind
                           , inlayHintTextEdits :: Maybe [TextEdit]
                           , inlayHintTooltip :: Maybe (Either String MarkupContent)
                           , inlayHintPaddingLeft :: Maybe Bool
                           , inlayHintPaddingRight :: Maybe Bool
                           , inlayHintData :: Maybe LSPAny }
 deriving (Show,Eq)

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentDiagnosticParams = DocumentDiagnosticParams { documentDiagnosticParamsTextDocument :: TextDocumentIdentifier
                                                         , documentDiagnosticParamsIdentifier :: Maybe String
                                                         , documentDiagnosticParamsPreviousResultId :: Maybe String }
 deriving (Show,Eq)

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments :: Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport) }
 deriving (Show,Eq)

data DiagnosticServerCancellationData = DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest :: Bool }
 deriving (Show,Eq)

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier :: Maybe String
                                                           , workspaceDiagnosticParamsPreviousResultIds :: [PreviousResultId] }
 deriving (Show,Eq)

data WorkspaceDiagnosticReport = WorkspaceDiagnosticReport { workspaceDiagnosticReportItems :: [WorkspaceDocumentDiagnosticReport] }
 deriving (Show,Eq)

data WorkspaceDiagnosticReportPartialResult = WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems :: [WorkspaceDocumentDiagnosticReport] }
 deriving (Show,Eq)

data DidOpenNotebookDocumentParams = DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument :: NotebookDocument
                                                                   , didOpenNotebookDocumentParamsCellTextDocuments :: [TextDocumentItem] }
 deriving (Show,Eq)

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , didChangeNotebookDocumentParamsChange :: NotebookDocumentChangeEvent }
 deriving (Show,Eq)

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier }
 deriving (Show,Eq)

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier
                                                                     , didCloseNotebookDocumentParamsCellTextDocuments :: [TextDocumentIdentifier] }
 deriving (Show,Eq)

data RegistrationParams = RegistrationParams { registrationParamsRegistrations :: [Registration] }
 deriving (Show,Eq)

data UnregistrationParams = UnregistrationParams { unregistrationParamsUnregisterations :: [Unregistration] }
 deriving (Show,Eq)

data InitializeParams = InitializeParams {  }
 deriving (Show,Eq)

data InitializeResult = InitializeResult { initializeResultCapabilities :: ServerCapabilities
                                         , initializeResultServerInfo :: Maybe () }
 deriving (Show,Eq)

data InitializeError = InitializeError { initializeErrorRetry :: Bool }
 deriving (Show,Eq)

data InitializedParams = InitializedParams {  }
 deriving (Show,Eq)

data DidChangeConfigurationParams = DidChangeConfigurationParams { didChangeConfigurationParamsSettings :: LSPAny }
 deriving (Show,Eq)

data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection :: Maybe (Either String [String]) }
 deriving (Show,Eq)

data ShowMessageParams = ShowMessageParams { showMessageParamsType :: MessageType
                                           , showMessageParamsMessage :: String }
 deriving (Show,Eq)

data ShowMessageRequestParams = ShowMessageRequestParams { showMessageRequestParamsType :: MessageType
                                                         , showMessageRequestParamsMessage :: String
                                                         , showMessageRequestParamsActions :: Maybe [MessageActionItem] }
 deriving (Show,Eq)

data MessageActionItem = MessageActionItem { messageActionItemTitle :: String }
 deriving (Show,Eq)

data LogMessageParams = LogMessageParams { logMessageParamsType :: MessageType
                                         , logMessageParamsMessage :: String }
 deriving (Show,Eq)

data DidOpenTextDocumentParams = DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument :: TextDocumentItem }
 deriving (Show,Eq)

data DidChangeTextDocumentParams = DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument :: VersionedTextDocumentIdentifier
                                                               , didChangeTextDocumentParamsContentChanges :: [TextDocumentContentChangeEvent] }
 deriving (Show,Eq)

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind :: TextDocumentSyncKind }
 deriving (Show,Eq)

data DidCloseTextDocumentParams = DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data DidSaveTextDocumentParams = DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                           , didSaveTextDocumentParamsText :: Maybe String }
 deriving (Show,Eq)

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions {  }
 deriving (Show,Eq)

data WillSaveTextDocumentParams = WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                             , willSaveTextDocumentParamsReason :: TextDocumentSaveReason }
 deriving (Show,Eq)

data TextEdit = TextEdit { textEditRange :: Range, textEditNewText :: String }
 deriving (Show,Eq)

data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges :: [FileEvent] }
 deriving (Show,Eq)

data DidChangeWatchedFilesRegistrationOptions = DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers :: [FileSystemWatcher] }
 deriving (Show,Eq)

data PublishDiagnosticsParams = PublishDiagnosticsParams { publishDiagnosticsParamsUri :: DocumentUri
                                                         , publishDiagnosticsParamsVersion :: Maybe Int
                                                         , publishDiagnosticsParamsDiagnostics :: [Diagnostic] }
 deriving (Show,Eq)

data CompletionParams = CompletionParams { completionParamsContext :: Maybe CompletionContext }
 deriving (Show,Eq)

data CompletionItem = CompletionItem { completionItemLabel :: String
                                     , completionItemLabelDetails :: Maybe CompletionItemLabelDetails
                                     , completionItemKind :: Maybe CompletionItemKind
                                     , completionItemTags :: Maybe [CompletionItemTag]
                                     , completionItemDetail :: Maybe String
                                     , completionItemDocumentation :: Maybe (Either String MarkupContent)
                                     , completionItemDeprecated :: Maybe Bool
                                     , completionItemPreselect :: Maybe Bool
                                     , completionItemSortText :: Maybe String
                                     , completionItemFilterText :: Maybe String
                                     , completionItemInsertText :: Maybe String
                                     , completionItemInsertTextFormat :: Maybe InsertTextFormat
                                     , completionItemInsertTextMode :: Maybe InsertTextMode
                                     , completionItemTextEdit :: Maybe (Either TextEdit InsertReplaceEdit)
                                     , completionItemTextEditText :: Maybe String
                                     , completionItemAdditionalTextEdits :: Maybe [TextEdit]
                                     , completionItemCommitCharacters :: Maybe [String]
                                     , completionItemCommand :: Maybe Command
                                     , completionItemData :: Maybe LSPAny }
 deriving (Show,Eq)

data CompletionList = CompletionList { completionListIsIncomplete :: Bool
                                     , completionListItemDefaults :: Maybe ()
                                     , completionListItems :: [CompletionItem] }
 deriving (Show,Eq)

data CompletionRegistrationOptions = CompletionRegistrationOptions {  }
 deriving (Show,Eq)

data HoverParams = HoverParams {  }
 deriving (Show,Eq)

data Hover = Hover { hoverContents :: Either (Either MarkupContent MarkedString) [MarkedString]
                   , hoverRange :: Maybe Range }
 deriving (Show,Eq)

data HoverRegistrationOptions = HoverRegistrationOptions {  }
 deriving (Show,Eq)

data SignatureHelpParams = SignatureHelpParams { signatureHelpParamsContext :: Maybe SignatureHelpContext }
 deriving (Show,Eq)

data SignatureHelp = SignatureHelp { signatureHelpSignatures :: [SignatureInformation]
                                   , signatureHelpActiveSignature :: Maybe Int
                                   , signatureHelpActiveParameter :: Maybe Int }
 deriving (Show,Eq)

data SignatureHelpRegistrationOptions = SignatureHelpRegistrationOptions {  }
 deriving (Show,Eq)

data DefinitionParams = DefinitionParams {  }
 deriving (Show,Eq)

data DefinitionRegistrationOptions = DefinitionRegistrationOptions {  }
 deriving (Show,Eq)

data ReferenceParams = ReferenceParams { referenceParamsContext :: ReferenceContext }
 deriving (Show,Eq)

data ReferenceRegistrationOptions = ReferenceRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentHighlightParams = DocumentHighlightParams {  }
 deriving (Show,Eq)

data DocumentHighlight = DocumentHighlight { documentHighlightRange :: Range
                                           , documentHighlightKind :: Maybe DocumentHighlightKind }
 deriving (Show,Eq)

data DocumentHighlightRegistrationOptions = DocumentHighlightRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentSymbolParams = DocumentSymbolParams { documentSymbolParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data SymbolInformation = SymbolInformation { symbolInformationDeprecated :: Maybe Bool
                                           , symbolInformationLocation :: Location }
 deriving (Show,Eq)

data DocumentSymbol = DocumentSymbol { documentSymbolName :: String
                                     , documentSymbolDetail :: Maybe String
                                     , documentSymbolKind :: SymbolKind
                                     , documentSymbolTags :: Maybe [SymbolTag]
                                     , documentSymbolDeprecated :: Maybe Bool
                                     , documentSymbolRange :: Range
                                     , documentSymbolSelectionRange :: Range
                                     , documentSymbolChildren :: Maybe [DocumentSymbol] }
 deriving (Show,Eq)

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions {  }
 deriving (Show,Eq)

data CodeActionParams = CodeActionParams { codeActionParamsTextDocument :: TextDocumentIdentifier
                                         , codeActionParamsRange :: Range
                                         , codeActionParamsContext :: CodeActionContext }
 deriving (Show,Eq)

data Command = Command { commandTitle :: String
                       , commandCommand :: String
                       , commandArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

data CodeAction = CodeAction { codeActionTitle :: String
                             , codeActionKind :: Maybe CodeActionKind
                             , codeActionDiagnostics :: Maybe [Diagnostic]
                             , codeActionIsPreferred :: Maybe Bool
                             , codeActionDisabled :: Maybe ()
                             , codeActionEdit :: Maybe WorkspaceEdit
                             , codeActionCommand :: Maybe Command
                             , codeActionData :: Maybe LSPAny }
 deriving (Show,Eq)

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsQuery :: String }
 deriving (Show,Eq)

data WorkspaceSymbol = WorkspaceSymbol { workspaceSymbolLocation :: Either Location ()
                                       , workspaceSymbolData :: Maybe LSPAny }
 deriving (Show,Eq)

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions {  }
 deriving (Show,Eq)

data CodeLensParams = CodeLensParams { codeLensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data CodeLens = CodeLens { codeLensRange :: Range
                         , codeLensCommand :: Maybe Command
                         , codeLensData :: Maybe LSPAny }
 deriving (Show,Eq)

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentLinkParams = DocumentLinkParams { documentLinkParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data DocumentLink = DocumentLink { documentLinkRange :: Range
                                 , documentLinkTarget :: Maybe String
                                 , documentLinkTooltip :: Maybe String
                                 , documentLinkData :: Maybe LSPAny }
 deriving (Show,Eq)

data DocumentLinkRegistrationOptions = DocumentLinkRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentFormattingParams = DocumentFormattingParams { documentFormattingParamsTextDocument :: TextDocumentIdentifier
                                                         , documentFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

data DocumentFormattingRegistrationOptions = DocumentFormattingRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentRangeFormattingParams = DocumentRangeFormattingParams { documentRangeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                   , documentRangeFormattingParamsRange :: Range
                                                                   , documentRangeFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

data DocumentRangeFormattingRegistrationOptions = DocumentRangeFormattingRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentOnTypeFormattingParams = DocumentOnTypeFormattingParams { documentOnTypeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                     , documentOnTypeFormattingParamsPosition :: Position
                                                                     , documentOnTypeFormattingParamsCh :: String
                                                                     , documentOnTypeFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions {  }
 deriving (Show,Eq)

data RenameParams = RenameParams { renameParamsTextDocument :: TextDocumentIdentifier
                                 , renameParamsPosition :: Position
                                 , renameParamsNewName :: String }
 deriving (Show,Eq)

data RenameRegistrationOptions = RenameRegistrationOptions {  }
 deriving (Show,Eq)

data PrepareRenameParams = PrepareRenameParams {  }
 deriving (Show,Eq)

data ExecuteCommandParams = ExecuteCommandParams { executeCommandParamsCommand :: String
                                                 , executeCommandParamsArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions {  }
 deriving (Show,Eq)

data ApplyWorkspaceEditParams = ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel :: Maybe String
                                                         , applyWorkspaceEditParamsEdit :: WorkspaceEdit }
 deriving (Show,Eq)

data ApplyWorkspaceEditResult = ApplyWorkspaceEditResult { applyWorkspaceEditResultApplied :: Bool
                                                         , applyWorkspaceEditResultFailureReason :: Maybe String
                                                         , applyWorkspaceEditResultFailedChange :: Maybe Int }
 deriving (Show,Eq)

data WorkDoneProgressBegin = WorkDoneProgressBegin { workDoneProgressBeginKind :: String
                                                   , workDoneProgressBeginTitle :: String
                                                   , workDoneProgressBeginCancellable :: Maybe Bool
                                                   , workDoneProgressBeginMessage :: Maybe String
                                                   , workDoneProgressBeginPercentage :: Maybe Int }
 deriving (Show,Eq)

data WorkDoneProgressReport = WorkDoneProgressReport { workDoneProgressReportKind :: String
                                                     , workDoneProgressReportCancellable :: Maybe Bool
                                                     , workDoneProgressReportMessage :: Maybe String
                                                     , workDoneProgressReportPercentage :: Maybe Int }
 deriving (Show,Eq)

data WorkDoneProgressEnd = WorkDoneProgressEnd { workDoneProgressEndKind :: String
                                               , workDoneProgressEndMessage :: Maybe String }
 deriving (Show,Eq)

data SetTraceParams = SetTraceParams { setTraceParamsValue :: TraceValues }
 deriving (Show,Eq)

data LogTraceParams = LogTraceParams { logTraceParamsMessage :: String
                                     , logTraceParamsVerbose :: Maybe String }
 deriving (Show,Eq)

data CancelParams = CancelParams { cancelParamsId :: Either Int String }
 deriving (Show,Eq)

data ProgressParams = ProgressParams { progressParamsToken :: ProgressToken
                                     , progressParamsValue :: LSPAny }
 deriving (Show,Eq)

data TextDocumentPositionParams = TextDocumentPositionParams { textDocumentPositionParamsTextDocument :: TextDocumentIdentifier
                                                             , textDocumentPositionParamsPosition :: Position }
 deriving (Show,Eq)

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

data LocationLink = LocationLink { locationLinkOriginSelectionRange :: Maybe Range
                                 , locationLinkTargetUri :: DocumentUri
                                 , locationLinkTargetRange :: Range
                                 , locationLinkTargetSelectionRange :: Range }
 deriving (Show,Eq)

data Range = Range { rangeStart :: Position, rangeEnd :: Position }
 deriving (Show,Eq)

data ImplementationOptions = ImplementationOptions {  }
 deriving (Show,Eq)

data StaticRegistrationOptions = StaticRegistrationOptions { staticRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

data TypeDefinitionOptions = TypeDefinitionOptions {  }
 deriving (Show,Eq)

data WorkspaceFoldersChangeEvent = WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded :: [WorkspaceFolder]
                                                               , workspaceFoldersChangeEventRemoved :: [WorkspaceFolder] }
 deriving (Show,Eq)

data ConfigurationItem = ConfigurationItem { configurationItemScopeUri :: Maybe String
                                           , configurationItemSection :: Maybe String }
 deriving (Show,Eq)

data TextDocumentIdentifier = TextDocumentIdentifier { textDocumentIdentifierUri :: DocumentUri }
 deriving (Show,Eq)

data Color = Color { colorRed :: Float
                   , colorGreen :: Float
                   , colorBlue :: Float
                   , colorAlpha :: Float }
 deriving (Show,Eq)

data DocumentColorOptions = DocumentColorOptions {  }
 deriving (Show,Eq)

data FoldingRangeOptions = FoldingRangeOptions {  }
 deriving (Show,Eq)

data DeclarationOptions = DeclarationOptions {  }
 deriving (Show,Eq)

data Position = Position { positionLine :: Int, positionCharacter :: Int }
 deriving (Show,Eq)

data SelectionRangeOptions = SelectionRangeOptions {  }
 deriving (Show,Eq)

data CallHierarchyOptions = CallHierarchyOptions {  }
 deriving (Show,Eq)

data SemanticTokensOptions = SemanticTokensOptions { semanticTokensOptionsLegend :: SemanticTokensLegend
                                                   , semanticTokensOptionsRange :: Maybe (Either Bool ())
                                                   , semanticTokensOptionsFull :: Maybe (Either Bool ()) }
 deriving (Show,Eq)

data SemanticTokensEdit = SemanticTokensEdit { semanticTokensEditStart :: Int
                                             , semanticTokensEditDeleteCount :: Int
                                             , semanticTokensEditData :: Maybe [Int] }
 deriving (Show,Eq)

data LinkedEditingRangeOptions = LinkedEditingRangeOptions {  }
 deriving (Show,Eq)

data FileCreate = FileCreate { fileCreateUri :: String }
 deriving (Show,Eq)

data TextDocumentEdit = TextDocumentEdit { textDocumentEditTextDocument :: OptionalVersionedTextDocumentIdentifier
                                         , textDocumentEditEdits :: [Either TextEdit AnnotatedTextEdit] }
 deriving (Show,Eq)

data CreateFile = CreateFile { createFileKind :: String
                             , createFileUri :: DocumentUri
                             , createFileOptions :: Maybe CreateFileOptions }
 deriving (Show,Eq)

data RenameFile = RenameFile { renameFileKind :: String
                             , renameFileOldUri :: DocumentUri
                             , renameFileNewUri :: DocumentUri
                             , renameFileOptions :: Maybe RenameFileOptions }
 deriving (Show,Eq)

data DeleteFile = DeleteFile { deleteFileKind :: String
                             , deleteFileUri :: DocumentUri
                             , deleteFileOptions :: Maybe DeleteFileOptions }
 deriving (Show,Eq)

data ChangeAnnotation = ChangeAnnotation { changeAnnotationLabel :: String
                                         , changeAnnotationNeedsConfirmation :: Maybe Bool
                                         , changeAnnotationDescription :: Maybe String }
 deriving (Show,Eq)

data FileOperationFilter = FileOperationFilter { fileOperationFilterScheme :: Maybe String
                                               , fileOperationFilterPattern :: FileOperationPattern }
 deriving (Show,Eq)

data FileRename = FileRename { fileRenameOldUri :: String
                             , fileRenameNewUri :: String }
 deriving (Show,Eq)

data FileDelete = FileDelete { fileDeleteUri :: String }
 deriving (Show,Eq)

data MonikerOptions = MonikerOptions {  }
 deriving (Show,Eq)

data TypeHierarchyOptions = TypeHierarchyOptions {  }
 deriving (Show,Eq)

data InlineValueContext = InlineValueContext { inlineValueContextFrameId :: Int
                                             , inlineValueContextStoppedLocation :: Range }
 deriving (Show,Eq)

data InlineValueText = InlineValueText { inlineValueTextRange :: Range
                                       , inlineValueTextText :: String }
 deriving (Show,Eq)

data InlineValueVariableLookup = InlineValueVariableLookup { inlineValueVariableLookupRange :: Range
                                                           , inlineValueVariableLookupVariableName :: Maybe String
                                                           , inlineValueVariableLookupCaseSensitiveLookup :: Bool }
 deriving (Show,Eq)

data InlineValueEvaluatableExpression = InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange :: Range
                                                                         , inlineValueEvaluatableExpressionExpression :: Maybe String }
 deriving (Show,Eq)

data InlineValueOptions = InlineValueOptions {  }
 deriving (Show,Eq)

data InlayHintLabelPart = InlayHintLabelPart { inlayHintLabelPartValue :: String
                                             , inlayHintLabelPartTooltip :: Maybe (Either String MarkupContent)
                                             , inlayHintLabelPartLocation :: Maybe Location
                                             , inlayHintLabelPartCommand :: Maybe Command }
 deriving (Show,Eq)

data MarkupContent = MarkupContent { markupContentKind :: MarkupKind
                                   , markupContentValue :: String }
 deriving (Show,Eq)

data InlayHintOptions = InlayHintOptions { inlayHintOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportRelatedDocuments :: Maybe (Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments :: Maybe (Map DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

data FullDocumentDiagnosticReport = FullDocumentDiagnosticReport { fullDocumentDiagnosticReportKind :: String
                                                                 , fullDocumentDiagnosticReportResultId :: Maybe String
                                                                 , fullDocumentDiagnosticReportItems :: [Diagnostic] }
 deriving (Show,Eq)

data UnchangedDocumentDiagnosticReport = UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind :: String
                                                                           , unchangedDocumentDiagnosticReportResultId :: String }
 deriving (Show,Eq)

data DiagnosticOptions = DiagnosticOptions { diagnosticOptionsIdentifier :: Maybe String
                                           , diagnosticOptionsInterFileDependencies :: Bool
                                           , diagnosticOptionsWorkspaceDiagnostics :: Bool }
 deriving (Show,Eq)

data PreviousResultId = PreviousResultId { previousResultIdUri :: DocumentUri
                                         , previousResultIdValue :: String }
 deriving (Show,Eq)

data NotebookDocument = NotebookDocument { notebookDocumentUri :: URI
                                         , notebookDocumentNotebookType :: String
                                         , notebookDocumentVersion :: Int
                                         , notebookDocumentMetadata :: Maybe LSPObject
                                         , notebookDocumentCells :: [NotebookCell] }
 deriving (Show,Eq)

data TextDocumentItem = TextDocumentItem { textDocumentItemUri :: DocumentUri
                                         , textDocumentItemLanguageId :: String
                                         , textDocumentItemVersion :: Int
                                         , textDocumentItemText :: String }
 deriving (Show,Eq)

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion :: Int
                                                                               , versionedNotebookDocumentIdentifierUri :: URI }
 deriving (Show,Eq)

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata :: Maybe LSPObject
                                                               , notebookDocumentChangeEventCells :: Maybe () }
 deriving (Show,Eq)

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { notebookDocumentIdentifierUri :: URI }
 deriving (Show,Eq)

data Registration = Registration { registrationId :: String
                                 , registrationMethod :: String
                                 , registrationRegisterOptions :: Maybe LSPAny }
 deriving (Show,Eq)

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }
 deriving (Show,Eq)

data BaseInitializeParams = BaseInitializeParams { baseInitializeParamsProcessId :: Either Int ()
                                                 , baseInitializeParamsClientInfo :: Maybe ()
                                                 , baseInitializeParamsLocale :: Maybe String
                                                 , baseInitializeParamsRootPath :: Maybe (Either String ())
                                                 , baseInitializeParamsRootUri :: Either DocumentUri ()
                                                 , baseInitializeParamsCapabilities :: ClientCapabilities
                                                 , baseInitializeParamsInitializationOptions :: Maybe LSPAny
                                                 , baseInitializeParamsTrace :: Maybe (Either (Either (Either String String) String) String) }
 deriving (Show,Eq)

data WorkspaceFoldersInitializeParams = WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders :: Maybe (Either [WorkspaceFolder] ()) }
 deriving (Show,Eq)

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
                                             , serverCapabilitiesWorkspace :: Maybe ()
                                             , serverCapabilitiesExperimental :: Maybe LSPAny }
 deriving (Show,Eq)

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion :: Int }
 deriving (Show,Eq)

data SaveOptions = SaveOptions { saveOptionsIncludeText :: Maybe Bool }
 deriving (Show,Eq)

data FileEvent = FileEvent { fileEventUri :: DocumentUri
                           , fileEventType :: FileChangeType }
 deriving (Show,Eq)

data FileSystemWatcher = FileSystemWatcher { fileSystemWatcherGlobPattern :: GlobPattern
                                           , fileSystemWatcherKind :: Maybe WatchKind }
 deriving (Show,Eq)

data Diagnostic = Diagnostic { diagnosticRange :: Range
                             , diagnosticSeverity :: Maybe DiagnosticSeverity
                             , diagnosticCode :: Maybe (Either Int String)
                             , diagnosticCodeDescription :: Maybe CodeDescription
                             , diagnosticSource :: Maybe String
                             , diagnosticMessage :: String
                             , diagnosticTags :: Maybe [DiagnosticTag]
                             , diagnosticRelatedInformation :: Maybe [DiagnosticRelatedInformation]
                             , diagnosticData :: Maybe LSPAny }
 deriving (Show,Eq)

data CompletionContext = CompletionContext { completionContextTriggerKind :: CompletionTriggerKind
                                           , completionContextTriggerCharacter :: Maybe String }
 deriving (Show,Eq)

data CompletionItemLabelDetails = CompletionItemLabelDetails { completionItemLabelDetailsDetail :: Maybe String
                                                             , completionItemLabelDetailsDescription :: Maybe String }
 deriving (Show,Eq)

data InsertReplaceEdit = InsertReplaceEdit { insertReplaceEditNewText :: String
                                           , insertReplaceEditInsert :: Range
                                           , insertReplaceEditReplace :: Range }
 deriving (Show,Eq)

data CompletionOptions = CompletionOptions { completionOptionsTriggerCharacters :: Maybe [String]
                                           , completionOptionsAllCommitCharacters :: Maybe [String]
                                           , completionOptionsResolveProvider :: Maybe Bool
                                           , completionOptionsCompletionItem :: Maybe () }
 deriving (Show,Eq)

data HoverOptions = HoverOptions {  }
 deriving (Show,Eq)

data SignatureHelpContext = SignatureHelpContext { signatureHelpContextTriggerKind :: SignatureHelpTriggerKind
                                                 , signatureHelpContextTriggerCharacter :: Maybe String
                                                 , signatureHelpContextIsRetrigger :: Bool
                                                 , signatureHelpContextActiveSignatureHelp :: Maybe SignatureHelp }
 deriving (Show,Eq)

data SignatureInformation = SignatureInformation { signatureInformationLabel :: String
                                                 , signatureInformationDocumentation :: Maybe (Either String MarkupContent)
                                                 , signatureInformationParameters :: Maybe [ParameterInformation]
                                                 , signatureInformationActiveParameter :: Maybe Int }
 deriving (Show,Eq)

data SignatureHelpOptions = SignatureHelpOptions { signatureHelpOptionsTriggerCharacters :: Maybe [String]
                                                 , signatureHelpOptionsRetriggerCharacters :: Maybe [String] }
 deriving (Show,Eq)

data DefinitionOptions = DefinitionOptions {  }
 deriving (Show,Eq)

data ReferenceContext = ReferenceContext { referenceContextIncludeDeclaration :: Bool }
 deriving (Show,Eq)

data ReferenceOptions = ReferenceOptions {  }
 deriving (Show,Eq)

data DocumentHighlightOptions = DocumentHighlightOptions {  }
 deriving (Show,Eq)

data BaseSymbolInformation = BaseSymbolInformation { baseSymbolInformationName :: String
                                                   , baseSymbolInformationKind :: SymbolKind
                                                   , baseSymbolInformationTags :: Maybe [SymbolTag]
                                                   , baseSymbolInformationContainerName :: Maybe String }
 deriving (Show,Eq)

data DocumentSymbolOptions = DocumentSymbolOptions { documentSymbolOptionsLabel :: Maybe String }
 deriving (Show,Eq)

data CodeActionContext = CodeActionContext { codeActionContextDiagnostics :: [Diagnostic]
                                           , codeActionContextOnly :: Maybe [CodeActionKind]
                                           , codeActionContextTriggerKind :: Maybe CodeActionTriggerKind }
 deriving (Show,Eq)

data CodeActionOptions = CodeActionOptions { codeActionOptionsCodeActionKinds :: Maybe [CodeActionKind]
                                           , codeActionOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data CodeLensOptions = CodeLensOptions { codeLensOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data DocumentLinkOptions = DocumentLinkOptions { documentLinkOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data FormattingOptions = FormattingOptions { formattingOptionsTabSize :: Int
                                           , formattingOptionsInsertSpaces :: Bool
                                           , formattingOptionsTrimTrailingWhitespace :: Maybe Bool
                                           , formattingOptionsInsertFinalNewline :: Maybe Bool
                                           , formattingOptionsTrimFinalNewlines :: Maybe Bool }
 deriving (Show,Eq)

data DocumentFormattingOptions = DocumentFormattingOptions {  }
 deriving (Show,Eq)

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions {  }
 deriving (Show,Eq)

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter :: String
                                                                       , documentOnTypeFormattingOptionsMoreTriggerCharacter :: Maybe [String] }
 deriving (Show,Eq)

data RenameOptions = RenameOptions { renameOptionsPrepareProvider :: Maybe Bool }
 deriving (Show,Eq)

data ExecuteCommandOptions = ExecuteCommandOptions { executeCommandOptionsCommands :: [String] }
 deriving (Show,Eq)

data SemanticTokensLegend = SemanticTokensLegend { semanticTokensLegendTokenTypes :: [String]
                                                 , semanticTokensLegendTokenModifiers :: [String] }
 deriving (Show,Eq)

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion :: Either Int () }
 deriving (Show,Eq)

data AnnotatedTextEdit = AnnotatedTextEdit { annotatedTextEditAnnotationId :: ChangeAnnotationIdentifier }
 deriving (Show,Eq)

data ResourceOperation = ResourceOperation { resourceOperationKind :: String
                                           , resourceOperationAnnotationId :: Maybe ChangeAnnotationIdentifier }
 deriving (Show,Eq)

data CreateFileOptions = CreateFileOptions { createFileOptionsOverwrite :: Maybe Bool
                                           , createFileOptionsIgnoreIfExists :: Maybe Bool }
 deriving (Show,Eq)

data RenameFileOptions = RenameFileOptions { renameFileOptionsOverwrite :: Maybe Bool
                                           , renameFileOptionsIgnoreIfExists :: Maybe Bool }
 deriving (Show,Eq)

data DeleteFileOptions = DeleteFileOptions { deleteFileOptionsRecursive :: Maybe Bool
                                           , deleteFileOptionsIgnoreIfNotExists :: Maybe Bool }
 deriving (Show,Eq)

data FileOperationPattern = FileOperationPattern { fileOperationPatternGlob :: String
                                                 , fileOperationPatternMatches :: Maybe FileOperationPatternKind
                                                 , fileOperationPatternOptions :: Maybe FileOperationPatternOptions }
 deriving (Show,Eq)

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportUri :: DocumentUri
                                                                                   , workspaceFullDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportUri :: DocumentUri
                                                                                             , workspaceUnchangedDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

data LSPObject = LSPObject {  }
 deriving (Show,Eq)

data NotebookCell = NotebookCell { notebookCellKind :: NotebookCellKind
                                 , notebookCellDocument :: DocumentUri
                                 , notebookCellMetadata :: Maybe LSPObject
                                 , notebookCellExecutionSummary :: Maybe ExecutionSummary }
 deriving (Show,Eq)

data NotebookCellArrayChange = NotebookCellArrayChange { notebookCellArrayChangeStart :: Int
                                                       , notebookCellArrayChangeDeleteCount :: Int
                                                       , notebookCellArrayChangeCells :: Maybe [NotebookCell] }
 deriving (Show,Eq)

data ClientCapabilities = ClientCapabilities { clientCapabilitiesWorkspace :: Maybe WorkspaceClientCapabilities
                                             , clientCapabilitiesTextDocument :: Maybe TextDocumentClientCapabilities
                                             , clientCapabilitiesNotebookDocument :: Maybe NotebookDocumentClientCapabilities
                                             , clientCapabilitiesWindow :: Maybe WindowClientCapabilities
                                             , clientCapabilitiesGeneral :: Maybe GeneralClientCapabilities
                                             , clientCapabilitiesExperimental :: Maybe LSPAny }
 deriving (Show,Eq)

data TextDocumentSyncOptions = TextDocumentSyncOptions { textDocumentSyncOptionsOpenClose :: Maybe Bool
                                                       , textDocumentSyncOptionsChange :: Maybe TextDocumentSyncKind
                                                       , textDocumentSyncOptionsWillSave :: Maybe Bool
                                                       , textDocumentSyncOptionsWillSaveWaitUntil :: Maybe Bool
                                                       , textDocumentSyncOptionsSave :: Maybe (Either Bool SaveOptions) }
 deriving (Show,Eq)

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector :: [Either () ()]
                                                               , notebookDocumentSyncOptionsSave :: Maybe Bool }
 deriving (Show,Eq)

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceFoldersServerCapabilities = WorkspaceFoldersServerCapabilities { workspaceFoldersServerCapabilitiesSupported :: Maybe Bool
                                                                             , workspaceFoldersServerCapabilitiesChangeNotifications :: Maybe (Either String Bool) }
 deriving (Show,Eq)

data FileOperationOptions = FileOperationOptions { fileOperationOptionsDidCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidDelete :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillDelete :: Maybe FileOperationRegistrationOptions }
 deriving (Show,Eq)

data CodeDescription = CodeDescription { codeDescriptionHref :: URI }
 deriving (Show,Eq)

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { diagnosticRelatedInformationLocation :: Location
                                                                 , diagnosticRelatedInformationMessage :: String }
 deriving (Show,Eq)

data ParameterInformation = ParameterInformation { parameterInformationLabel :: Either String (Int
                                                                                              ,Int)
                                                 , parameterInformationDocumentation :: Maybe (Either String MarkupContent) }
 deriving (Show,Eq)

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook :: Either String NotebookDocumentFilter
                                                                     , notebookCellTextDocumentFilterLanguage :: Maybe String }
 deriving (Show,Eq)

data FileOperationPatternOptions = FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase :: Maybe Bool }
 deriving (Show,Eq)

data ExecutionSummary = ExecutionSummary { executionSummaryExecutionOrder :: Int
                                         , executionSummarySuccess :: Maybe Bool }
 deriving (Show,Eq)

data WorkspaceClientCapabilities = WorkspaceClientCapabilities { workspaceClientCapabilitiesApplyEdit :: Maybe Bool
                                                               , workspaceClientCapabilitiesWorkspaceEdit :: Maybe WorkspaceEditClientCapabilities
                                                               , workspaceClientCapabilitiesDidChangeConfiguration :: Maybe DidChangeConfigurationClientCapabilities
                                                               , workspaceClientCapabilitiesDidChangeWatchedFiles :: Maybe DidChangeWatchedFilesClientCapabilities
                                                               , workspaceClientCapabilitiesSymbol :: Maybe WorkspaceSymbolClientCapabilities
                                                               , workspaceClientCapabilitiesExecuteCommand :: Maybe ExecuteCommandClientCapabilities
                                                               , workspaceClientCapabilitiesWorkspaceFolders :: Maybe Bool
                                                               , workspaceClientCapabilitiesConfiguration :: Maybe Bool
                                                               , workspaceClientCapabilitiesSemanticTokens :: Maybe SemanticTokensWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesCodeLens :: Maybe CodeLensWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesFileOperations :: Maybe FileOperationClientCapabilities
                                                               , workspaceClientCapabilitiesInlineValue :: Maybe InlineValueWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesInlayHint :: Maybe InlayHintWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesDiagnostics :: Maybe DiagnosticWorkspaceClientCapabilities }
 deriving (Show,Eq)

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
                                                                     , textDocumentClientCapabilitiesDiagnostic :: Maybe DiagnosticClientCapabilities }
 deriving (Show,Eq)

data NotebookDocumentClientCapabilities = NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization :: NotebookDocumentSyncClientCapabilities }
 deriving (Show,Eq)

data WindowClientCapabilities = WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress :: Maybe Bool
                                                         , windowClientCapabilitiesShowMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , windowClientCapabilitiesShowDocument :: Maybe ShowDocumentClientCapabilities }
 deriving (Show,Eq)

data GeneralClientCapabilities = GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport :: Maybe ()
                                                           , generalClientCapabilitiesRegularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , generalClientCapabilitiesMarkdown :: Maybe MarkdownClientCapabilities
                                                           , generalClientCapabilitiesPositionEncodings :: Maybe [PositionEncodingKind] }
 deriving (Show,Eq)

data RelativePattern = RelativePattern { relativePatternBaseUri :: Either WorkspaceFolder URI
                                       , relativePatternPattern :: Pattern }
 deriving (Show,Eq)

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesResourceOperations :: Maybe [ResourceOperationKind]
                                                                       , workspaceEditClientCapabilitiesFailureHandling :: Maybe FailureHandlingKind
                                                                       , workspaceEditClientCapabilitiesNormalizesLineEndings :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesChangeAnnotationSupport :: Maybe () }
 deriving (Show,Eq)

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                       , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport :: Maybe Bool }
 deriving (Show,Eq)

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                           , workspaceSymbolClientCapabilitiesSymbolKind :: Maybe ()
                                                                           , workspaceSymbolClientCapabilitiesTagSupport :: Maybe ()
                                                                           , workspaceSymbolClientCapabilitiesResolveSupport :: Maybe () }
 deriving (Show,Eq)

data ExecuteCommandClientCapabilities = ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data SemanticTokensWorkspaceClientCapabilities = SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data CodeLensWorkspaceClientCapabilities = CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data FileOperationClientCapabilities = FileOperationClientCapabilities { fileOperationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidDelete :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillDelete :: Maybe Bool }
 deriving (Show,Eq)

data InlineValueWorkspaceClientCapabilities = InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data InlayHintWorkspaceClientCapabilities = InlayHintWorkspaceClientCapabilities { inlayHintWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data DiagnosticWorkspaceClientCapabilities = DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSave :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSaveWaitUntil :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesDidSave :: Maybe Bool }
 deriving (Show,Eq)

data CompletionClientCapabilities = CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionItem :: Maybe ()
                                                                 , completionClientCapabilitiesCompletionItemKind :: Maybe ()
                                                                 , completionClientCapabilitiesInsertTextMode :: Maybe InsertTextMode
                                                                 , completionClientCapabilitiesContextSupport :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionList :: Maybe () }
 deriving (Show,Eq)

data HoverClientCapabilities = HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                       , hoverClientCapabilitiesContentFormat :: Maybe [MarkupKind] }
 deriving (Show,Eq)

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , signatureHelpClientCapabilitiesSignatureInformation :: Maybe ()
                                                                       , signatureHelpClientCapabilitiesContextSupport :: Maybe Bool }
 deriving (Show,Eq)

data DeclarationClientCapabilities = DeclarationClientCapabilities { declarationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                   , declarationClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

data DefinitionClientCapabilities = DefinitionClientCapabilities { definitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , definitionClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

data TypeDefinitionClientCapabilities = TypeDefinitionClientCapabilities { typeDefinitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , typeDefinitionClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

data ImplementationClientCapabilities = ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , implementationClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

data ReferenceClientCapabilities = ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentHighlightClientCapabilities = DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentSymbolClientCapabilities = DocumentSymbolClientCapabilities { documentSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesSymbolKind :: Maybe ()
                                                                         , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesTagSupport :: Maybe ()
                                                                         , documentSymbolClientCapabilitiesLabelSupport :: Maybe Bool }
 deriving (Show,Eq)

data CodeActionClientCapabilities = CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , codeActionClientCapabilitiesCodeActionLiteralSupport :: Maybe ()
                                                                 , codeActionClientCapabilitiesIsPreferredSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDisabledSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDataSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesResolveSupport :: Maybe ()
                                                                 , codeActionClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool }
 deriving (Show,Eq)

data CodeLensClientCapabilities = CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , documentLinkClientCapabilitiesTooltipSupport :: Maybe Bool }
 deriving (Show,Eq)

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentOnTypeFormattingClientCapabilities = DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data RenameClientCapabilities = RenameClientCapabilities { renameClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupport :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupportDefaultBehavior :: Maybe PrepareSupportDefaultBehavior
                                                         , renameClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool }
 deriving (Show,Eq)

data FoldingRangeClientCapabilities = FoldingRangeClientCapabilities { foldingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesRangeLimit :: Maybe Int
                                                                     , foldingRangeClientCapabilitiesLineFoldingOnly :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesFoldingRangeKind :: Maybe ()
                                                                     , foldingRangeClientCapabilitiesFoldingRange :: Maybe () }
 deriving (Show,Eq)

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesRelatedInformation :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesTagSupport :: Maybe ()
                                                                                 , publishDiagnosticsClientCapabilitiesVersionSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesDataSupport :: Maybe Bool }
 deriving (Show,Eq)

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesRequests :: ()
                                                                         , semanticTokensClientCapabilitiesTokenTypes :: [String]
                                                                         , semanticTokensClientCapabilitiesTokenModifiers :: [String]
                                                                         , semanticTokensClientCapabilitiesFormats :: [TokenFormat]
                                                                         , semanticTokensClientCapabilitiesOverlappingTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesMultilineTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesServerCancelSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesAugmentsSyntaxTokens :: Maybe Bool }
 deriving (Show,Eq)

data LinkedEditingRangeClientCapabilities = LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data MonikerClientCapabilities = MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data TypeHierarchyClientCapabilities = TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data InlineValueClientCapabilities = InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data InlayHintClientCapabilities = InlayHintClientCapabilities { inlayHintClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                               , inlayHintClientCapabilitiesResolveSupport :: Maybe () }
 deriving (Show,Eq)

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesRelatedDocumentSupport :: Maybe Bool }
 deriving (Show,Eq)

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                     , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport :: Maybe Bool }
 deriving (Show,Eq)

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem :: Maybe () }
 deriving (Show,Eq)

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport :: Bool }
 deriving (Show,Eq)

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine :: String
                                                                                 , regularExpressionsClientCapabilitiesVersion :: Maybe String }
 deriving (Show,Eq)

data MarkdownClientCapabilities = MarkdownClientCapabilities { markdownClientCapabilitiesParser :: String
                                                             , markdownClientCapabilitiesVersion :: Maybe String
                                                             , markdownClientCapabilitiesAllowedTags :: Maybe [String] }
 deriving (Show,Eq)

data SemanticTokenTypes = SemanticTokenTypesNamespace
                        | SemanticTokenTypesType
                        | SemanticTokenTypesClass
                        | SemanticTokenTypesEnum
                        | SemanticTokenTypesInterface
                        | SemanticTokenTypesStruct
                        | SemanticTokenTypesTypeParameter
                        | SemanticTokenTypesParameter
                        | SemanticTokenTypesVariable
                        | SemanticTokenTypesProperty
                        | SemanticTokenTypesEnumMember
                        | SemanticTokenTypesEvent
                        | SemanticTokenTypesFunction
                        | SemanticTokenTypesMethod
                        | SemanticTokenTypesMacro
                        | SemanticTokenTypesKeyword
                        | SemanticTokenTypesModifier
                        | SemanticTokenTypesComment
                        | SemanticTokenTypesString
                        | SemanticTokenTypesNumber
                        | SemanticTokenTypesRegexp
                        | SemanticTokenTypesOperator
                        | SemanticTokenTypesDecorator
 deriving (Show,Eq,Enum,Bounded,Ord)

data SemanticTokenModifiers = SemanticTokenModifiersDeclaration
                            | SemanticTokenModifiersDefinition
                            | SemanticTokenModifiersReadonly
                            | SemanticTokenModifiersStatic
                            | SemanticTokenModifiersDeprecated
                            | SemanticTokenModifiersAbstract
                            | SemanticTokenModifiersAsync
                            | SemanticTokenModifiersModification
                            | SemanticTokenModifiersDocumentation
                            | SemanticTokenModifiersDefaultLibrary
 deriving (Show,Eq,Enum,Bounded,Ord)

data ErrorCodes = ErrorCodesParseError
                | ErrorCodesInvalidRequest
                | ErrorCodesMethodNotFound
                | ErrorCodesInvalidParams
                | ErrorCodesInternalError
                | ErrorCodesJsonrpcReservedErrorRangeStart
                | ErrorCodesServerErrorStart
                | ErrorCodesServerNotInitialized
                | ErrorCodesUnknownErrorCode
                | ErrorCodesJsonrpcReservedErrorRangeEnd
                | ErrorCodesServerErrorEnd
 deriving (Show,Eq,Enum,Bounded,Ord)

data LSPErrorCodes = LSPErrorCodesLspReservedErrorRangeStart
                   | LSPErrorCodesRequestFailed
                   | LSPErrorCodesServerCancelled
                   | LSPErrorCodesContentModified
                   | LSPErrorCodesRequestCancelled
                   | LSPErrorCodesLspReservedErrorRangeEnd
 deriving (Show,Eq,Enum,Bounded,Ord)

data FoldingRangeKind = FoldingRangeKindComment
                      | FoldingRangeKindImports
                      | FoldingRangeKindRegion
 deriving (Show,Eq,Enum,Bounded,Ord)

data SymbolKind = SymbolKindFile
                | SymbolKindModule
                | SymbolKindNamespace
                | SymbolKindPackage
                | SymbolKindClass
                | SymbolKindMethod
                | SymbolKindProperty
                | SymbolKindField
                | SymbolKindConstructor
                | SymbolKindEnum
                | SymbolKindInterface
                | SymbolKindFunction
                | SymbolKindVariable
                | SymbolKindConstant
                | SymbolKindString
                | SymbolKindNumber
                | SymbolKindBoolean
                | SymbolKindArray
                | SymbolKindObject
                | SymbolKindKey
                | SymbolKindNull
                | SymbolKindEnumMember
                | SymbolKindStruct
                | SymbolKindEvent
                | SymbolKindOperator
                | SymbolKindTypeParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

data SymbolTag = SymbolTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

data UniquenessLevel = UniquenessLevelDocument
                     | UniquenessLevelProject
                     | UniquenessLevelGroup
                     | UniquenessLevelScheme
                     | UniquenessLevelGlobal
 deriving (Show,Eq,Enum,Bounded,Ord)

data MonikerKind = MonikerKindImport | MonikerKindExport | MonikerKindLocal
 deriving (Show,Eq,Enum,Bounded,Ord)

data InlayHintKind = InlayHintKindType | InlayHintKindParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

data MessageType = MessageTypeError
                 | MessageTypeWarning
                 | MessageTypeInfo
                 | MessageTypeLog
 deriving (Show,Eq,Enum,Bounded,Ord)

data TextDocumentSyncKind = TextDocumentSyncKindNone
                          | TextDocumentSyncKindFull
                          | TextDocumentSyncKindIncremental
 deriving (Show,Eq,Enum,Bounded,Ord)

data TextDocumentSaveReason = TextDocumentSaveReasonManual
                            | TextDocumentSaveReasonAfterDelay
                            | TextDocumentSaveReasonFocusOut
 deriving (Show,Eq,Enum,Bounded,Ord)

data CompletionItemKind = CompletionItemKindText
                        | CompletionItemKindMethod
                        | CompletionItemKindFunction
                        | CompletionItemKindConstructor
                        | CompletionItemKindField
                        | CompletionItemKindVariable
                        | CompletionItemKindClass
                        | CompletionItemKindInterface
                        | CompletionItemKindModule
                        | CompletionItemKindProperty
                        | CompletionItemKindUnit
                        | CompletionItemKindValue
                        | CompletionItemKindEnum
                        | CompletionItemKindKeyword
                        | CompletionItemKindSnippet
                        | CompletionItemKindColor
                        | CompletionItemKindFile
                        | CompletionItemKindReference
                        | CompletionItemKindFolder
                        | CompletionItemKindEnumMember
                        | CompletionItemKindConstant
                        | CompletionItemKindStruct
                        | CompletionItemKindEvent
                        | CompletionItemKindOperator
                        | CompletionItemKindTypeParameter
 deriving (Show,Eq,Enum,Bounded,Ord)

data CompletionItemTag = CompletionItemTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

data InsertTextFormat = InsertTextFormatPlainText | InsertTextFormatSnippet
 deriving (Show,Eq,Enum,Bounded,Ord)

data InsertTextMode = InsertTextModeAsIs | InsertTextModeAdjustIndentation
 deriving (Show,Eq,Enum,Bounded,Ord)

data DocumentHighlightKind = DocumentHighlightKindText
                           | DocumentHighlightKindRead
                           | DocumentHighlightKindWrite
 deriving (Show,Eq,Enum,Bounded,Ord)

data CodeActionKind = CodeActionKindEmpty
                    | CodeActionKindQuickFix
                    | CodeActionKindRefactor
                    | CodeActionKindRefactorExtract
                    | CodeActionKindRefactorInline
                    | CodeActionKindRefactorRewrite
                    | CodeActionKindSource
                    | CodeActionKindSourceOrganizeImports
                    | CodeActionKindSourceFixAll
 deriving (Show,Eq,Enum,Bounded,Ord)

data TraceValues = TraceValuesOff | TraceValuesMessages | TraceValuesVerbose
 deriving (Show,Eq,Enum,Bounded,Ord)

data MarkupKind = MarkupKindPlainText | MarkupKindMarkdown
 deriving (Show,Eq,Enum,Bounded,Ord)

data PositionEncodingKind = PositionEncodingKindUTF8
                          | PositionEncodingKindUTF16
                          | PositionEncodingKindUTF32
 deriving (Show,Eq,Enum,Bounded,Ord)

data FileChangeType = FileChangeTypeCreated
                    | FileChangeTypeChanged
                    | FileChangeTypeDeleted
 deriving (Show,Eq,Enum,Bounded,Ord)

data WatchKind = WatchKindCreate | WatchKindChange | WatchKindDelete
 deriving (Show,Eq,Enum,Bounded,Ord)

data DiagnosticSeverity = DiagnosticSeverityError
                        | DiagnosticSeverityWarning
                        | DiagnosticSeverityInformation
                        | DiagnosticSeverityHint
 deriving (Show,Eq,Enum,Bounded,Ord)

data DiagnosticTag = DiagnosticTagUnnecessary | DiagnosticTagDeprecated
 deriving (Show,Eq,Enum,Bounded,Ord)

data CompletionTriggerKind = CompletionTriggerKindInvoked
                           | CompletionTriggerKindTriggerCharacter
                           | CompletionTriggerKindTriggerForIncompleteCompletions
 deriving (Show,Eq,Enum,Bounded,Ord)

data SignatureHelpTriggerKind = SignatureHelpTriggerKindInvoked
                              | SignatureHelpTriggerKindTriggerCharacter
                              | SignatureHelpTriggerKindContentChange
 deriving (Show,Eq,Enum,Bounded,Ord)

data CodeActionTriggerKind = CodeActionTriggerKindInvoked
                           | CodeActionTriggerKindAutomatic
 deriving (Show,Eq,Enum,Bounded,Ord)

data FileOperationPatternKind = FileOperationPatternKindFile
                              | FileOperationPatternKindFolder
 deriving (Show,Eq,Enum,Bounded,Ord)

data NotebookCellKind = NotebookCellKindMarkup | NotebookCellKindCode
 deriving (Show,Eq,Enum,Bounded,Ord)

data ResourceOperationKind = ResourceOperationKindCreate
                           | ResourceOperationKindRename
                           | ResourceOperationKindDelete
 deriving (Show,Eq,Enum,Bounded,Ord)

data FailureHandlingKind = FailureHandlingKindAbort
                         | FailureHandlingKindTransactional
                         | FailureHandlingKindTextOnlyTransactional
                         | FailureHandlingKindUndo
 deriving (Show,Eq,Enum,Bounded,Ord)

data PrepareSupportDefaultBehavior = PrepareSupportDefaultBehaviorIdentifier
 deriving (Show,Eq,Enum,Bounded,Ord)

data TokenFormat = TokenFormatRelative
 deriving (Show,Eq,Enum,Bounded,Ord)

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