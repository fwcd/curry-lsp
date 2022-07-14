-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol.Types where

import qualified Data.Map
import qualified LSP.Protocol.Support

data ImplementationParams = ImplementationParams {  }
 deriving (Show,Eq)

data Location = Location { locationUri :: LSP.Protocol.Support.DocumentUri
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
                                           , callHierarchyItemUri :: LSP.Protocol.Support.DocumentUri
                                           , callHierarchyItemRange :: Range
                                           , callHierarchyItemSelectionRange :: Range
                                           , callHierarchyItemData :: Maybe LSP.Protocol.Support.LSPAny }
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

data WorkspaceEdit = WorkspaceEdit { workspaceEditChanges :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri [TextEdit])
                                   , workspaceEditDocumentChanges :: Maybe [Either (Either (Either TextDocumentEdit CreateFile) RenameFile) DeleteFile]
                                   , workspaceEditChangeAnnotations :: Maybe (Data.Map.Map ChangeAnnotationIdentifier ChangeAnnotation) }
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
                                           , typeHierarchyItemUri :: LSP.Protocol.Support.DocumentUri
                                           , typeHierarchyItemRange :: Range
                                           , typeHierarchyItemSelectionRange :: Range
                                           , typeHierarchyItemData :: Maybe LSP.Protocol.Support.LSPAny }
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
                           , inlayHintData :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentDiagnosticParams = DocumentDiagnosticParams { documentDiagnosticParamsTextDocument :: TextDocumentIdentifier
                                                         , documentDiagnosticParamsIdentifier :: Maybe String
                                                         , documentDiagnosticParamsPreviousResultId :: Maybe String }
 deriving (Show,Eq)

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments :: Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport) }
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

data DidChangeConfigurationParams = DidChangeConfigurationParams { didChangeConfigurationParamsSettings :: LSP.Protocol.Support.LSPAny }
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

data PublishDiagnosticsParams = PublishDiagnosticsParams { publishDiagnosticsParamsUri :: LSP.Protocol.Support.DocumentUri
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
                                     , completionItemData :: Maybe LSP.Protocol.Support.LSPAny }
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
                       , commandArguments :: Maybe [LSP.Protocol.Support.LSPAny] }
 deriving (Show,Eq)

data CodeAction = CodeAction { codeActionTitle :: String
                             , codeActionKind :: Maybe CodeActionKind
                             , codeActionDiagnostics :: Maybe [Diagnostic]
                             , codeActionIsPreferred :: Maybe Bool
                             , codeActionDisabled :: Maybe ()
                             , codeActionEdit :: Maybe WorkspaceEdit
                             , codeActionCommand :: Maybe Command
                             , codeActionData :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsQuery :: String }
 deriving (Show,Eq)

data WorkspaceSymbol = WorkspaceSymbol { workspaceSymbolLocation :: Either Location ()
                                       , workspaceSymbolData :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions {  }
 deriving (Show,Eq)

data CodeLensParams = CodeLensParams { codeLensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data CodeLens = CodeLens { codeLensRange :: Range
                         , codeLensCommand :: Maybe Command
                         , codeLensData :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }
 deriving (Show,Eq)

data DocumentLinkParams = DocumentLinkParams { documentLinkParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

data DocumentLink = DocumentLink { documentLinkRange :: Range
                                 , documentLinkTarget :: Maybe String
                                 , documentLinkTooltip :: Maybe String
                                 , documentLinkData :: Maybe LSP.Protocol.Support.LSPAny }
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
                                                 , executeCommandParamsArguments :: Maybe [LSP.Protocol.Support.LSPAny] }
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
                                     , progressParamsValue :: LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data TextDocumentPositionParams = TextDocumentPositionParams { textDocumentPositionParamsTextDocument :: TextDocumentIdentifier
                                                             , textDocumentPositionParamsPosition :: Position }
 deriving (Show,Eq)

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken :: Maybe ProgressToken }
 deriving (Show,Eq)

data LocationLink = LocationLink { locationLinkOriginSelectionRange :: Maybe Range
                                 , locationLinkTargetUri :: LSP.Protocol.Support.DocumentUri
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

data TextDocumentIdentifier = TextDocumentIdentifier { textDocumentIdentifierUri :: LSP.Protocol.Support.DocumentUri }
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
                             , createFileUri :: LSP.Protocol.Support.DocumentUri
                             , createFileOptions :: Maybe CreateFileOptions }
 deriving (Show,Eq)

data RenameFile = RenameFile { renameFileKind :: String
                             , renameFileOldUri :: LSP.Protocol.Support.DocumentUri
                             , renameFileNewUri :: LSP.Protocol.Support.DocumentUri
                             , renameFileOptions :: Maybe RenameFileOptions }
 deriving (Show,Eq)

data DeleteFile = DeleteFile { deleteFileKind :: String
                             , deleteFileUri :: LSP.Protocol.Support.DocumentUri
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

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportRelatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
 deriving (Show,Eq)

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }
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

data PreviousResultId = PreviousResultId { previousResultIdUri :: LSP.Protocol.Support.DocumentUri
                                         , previousResultIdValue :: String }
 deriving (Show,Eq)

data NotebookDocument = NotebookDocument { notebookDocumentUri :: URI
                                         , notebookDocumentNotebookType :: String
                                         , notebookDocumentVersion :: Int
                                         , notebookDocumentMetadata :: Maybe LSPObject
                                         , notebookDocumentCells :: [NotebookCell] }
 deriving (Show,Eq)

data TextDocumentItem = TextDocumentItem { textDocumentItemUri :: LSP.Protocol.Support.DocumentUri
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
                                 , registrationRegisterOptions :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }
 deriving (Show,Eq)

data BaseInitializeParams = BaseInitializeParams { baseInitializeParamsProcessId :: Either Int ()
                                                 , baseInitializeParamsClientInfo :: Maybe ()
                                                 , baseInitializeParamsLocale :: Maybe String
                                                 , baseInitializeParamsRootPath :: Maybe (Either String ())
                                                 , baseInitializeParamsRootUri :: Either LSP.Protocol.Support.DocumentUri ()
                                                 , baseInitializeParamsCapabilities :: ClientCapabilities
                                                 , baseInitializeParamsInitializationOptions :: Maybe LSP.Protocol.Support.LSPAny
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
                                             , serverCapabilitiesExperimental :: Maybe LSP.Protocol.Support.LSPAny }
 deriving (Show,Eq)

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion :: Int }
 deriving (Show,Eq)

data SaveOptions = SaveOptions { saveOptionsIncludeText :: Maybe Bool }
 deriving (Show,Eq)

data FileEvent = FileEvent { fileEventUri :: LSP.Protocol.Support.DocumentUri
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
                             , diagnosticData :: Maybe LSP.Protocol.Support.LSPAny }
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

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportUri :: LSP.Protocol.Support.DocumentUri
                                                                                   , workspaceFullDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportUri :: LSP.Protocol.Support.DocumentUri
                                                                                             , workspaceUnchangedDocumentDiagnosticReportVersion :: Either Int () }
 deriving (Show,Eq)

data LSPObject = LSPObject {  }
 deriving (Show,Eq)

data NotebookCell = NotebookCell { notebookCellKind :: NotebookCellKind
                                 , notebookCellDocument :: LSP.Protocol.Support.DocumentUri
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
                                             , clientCapabilitiesExperimental :: Maybe LSP.Protocol.Support.LSPAny }
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

type LSPArray = [LSP.Protocol.Support.LSPAny]

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