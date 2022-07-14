-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol.Types where

import qualified Data.Map
import qualified LSP.Protocol.Support

data ImplementationParams = ImplementationParams {  }

data Location = Location { locationUri :: LSP.Protocol.Support.DocumentUri
                         , locationRange :: Range }

data ImplementationRegistrationOptions = ImplementationRegistrationOptions {  }

data TypeDefinitionParams = TypeDefinitionParams {  }

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions {  }

data WorkspaceFolder = WorkspaceFolder { workspaceFolderUri :: URI
                                       , workspaceFolderName :: String }

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent :: WorkspaceFoldersChangeEvent }

data ConfigurationParams = ConfigurationParams { configurationParamsItems :: [ConfigurationItem] }

data PartialResultParams = PartialResultParams { partialResultParamsPartialResultToken :: Maybe ProgressToken }

data DocumentColorParams = DocumentColorParams { documentColorParamsTextDocument :: TextDocumentIdentifier }

data ColorInformation = ColorInformation { colorInformationRange :: Range
                                         , colorInformationColor :: Color }

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions {  }

data ColorPresentationParams = ColorPresentationParams { colorPresentationParamsTextDocument :: TextDocumentIdentifier
                                                       , colorPresentationParamsColor :: Color
                                                       , colorPresentationParamsRange :: Range }

data ColorPresentation = ColorPresentation { colorPresentationLabel :: String
                                           , colorPresentationTextEdit :: Maybe TextEdit
                                           , colorPresentationAdditionalTextEdits :: Maybe [TextEdit] }

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress :: Maybe Bool }

data TextDocumentRegistrationOptions = TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector :: Either DocumentSelector () }

data FoldingRangeParams = FoldingRangeParams { foldingRangeParamsTextDocument :: TextDocumentIdentifier }

data FoldingRange = FoldingRange { foldingRangeStartLine :: Int
                                 , foldingRangeStartCharacter :: Maybe Int
                                 , foldingRangeEndLine :: Int
                                 , foldingRangeEndCharacter :: Maybe Int
                                 , foldingRangeKind :: Maybe FoldingRangeKind
                                 , foldingRangeCollapsedText :: Maybe String }

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions {  }

data DeclarationParams = DeclarationParams {  }

data DeclarationRegistrationOptions = DeclarationRegistrationOptions {  }

data SelectionRangeParams = SelectionRangeParams { selectionRangeParamsTextDocument :: TextDocumentIdentifier
                                                 , selectionRangeParamsPositions :: [Position] }

data SelectionRange = SelectionRange { selectionRangeRange :: Range
                                     , selectionRangeParent :: Maybe SelectionRange }

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions {  }

data WorkDoneProgressCreateParams = WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken :: ProgressToken }

data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken :: ProgressToken }

data CallHierarchyPrepareParams = CallHierarchyPrepareParams {  }

data CallHierarchyItem = CallHierarchyItem { callHierarchyItemName :: String
                                           , callHierarchyItemKind :: SymbolKind
                                           , callHierarchyItemTags :: Maybe [SymbolTag]
                                           , callHierarchyItemDetail :: Maybe String
                                           , callHierarchyItemUri :: LSP.Protocol.Support.DocumentUri
                                           , callHierarchyItemRange :: Range
                                           , callHierarchyItemSelectionRange :: Range
                                           , callHierarchyItemData :: Maybe LSPAny }

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions {  }

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem :: CallHierarchyItem }

data CallHierarchyIncomingCall = CallHierarchyIncomingCall { callHierarchyIncomingCallFrom :: CallHierarchyItem
                                                           , callHierarchyIncomingCallFromRanges :: [Range] }

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem :: CallHierarchyItem }

data CallHierarchyOutgoingCall = CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo :: CallHierarchyItem
                                                           , callHierarchyOutgoingCallFromRanges :: [Range] }

data SemanticTokensParams = SemanticTokensParams { semanticTokensParamsTextDocument :: TextDocumentIdentifier }

data SemanticTokens = SemanticTokens { semanticTokensResultId :: Maybe String
                                     , semanticTokensData :: [Int] }

data SemanticTokensPartialResult = SemanticTokensPartialResult { semanticTokensPartialResultData :: [Int] }

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions {  }

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensDeltaParamsPreviousResultId :: String }

data SemanticTokensDelta = SemanticTokensDelta { semanticTokensDeltaResultId :: Maybe String
                                               , semanticTokensDeltaEdits :: [SemanticTokensEdit] }

data SemanticTokensDeltaPartialResult = SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits :: [SemanticTokensEdit] }

data SemanticTokensRangeParams = SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument :: TextDocumentIdentifier
                                                           , semanticTokensRangeParamsRange :: Range }

data ShowDocumentParams = ShowDocumentParams { showDocumentParamsUri :: URI
                                             , showDocumentParamsExternal :: Maybe Bool
                                             , showDocumentParamsTakeFocus :: Maybe Bool
                                             , showDocumentParamsSelection :: Maybe Range }

data ShowDocumentResult = ShowDocumentResult { showDocumentResultSuccess :: Bool }

data LinkedEditingRangeParams = LinkedEditingRangeParams {  }

data LinkedEditingRanges = LinkedEditingRanges { linkedEditingRangesRanges :: [Range]
                                               , linkedEditingRangesWordPattern :: Maybe String }

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions {  }

data CreateFilesParams = CreateFilesParams { createFilesParamsFiles :: [FileCreate] }

data WorkspaceEdit = WorkspaceEdit { workspaceEditChanges :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri [TextEdit])
                                   , workspaceEditDocumentChanges :: Maybe [Either (Either (Either TextDocumentEdit CreateFile) RenameFile) DeleteFile]
                                   , workspaceEditChangeAnnotations :: Maybe (Data.Map.Map ChangeAnnotationIdentifier ChangeAnnotation) }

data FileOperationRegistrationOptions = FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters :: [FileOperationFilter] }

data RenameFilesParams = RenameFilesParams { renameFilesParamsFiles :: [FileRename] }

data DeleteFilesParams = DeleteFilesParams { deleteFilesParamsFiles :: [FileDelete] }

data MonikerParams = MonikerParams {  }

data Moniker = Moniker { monikerScheme :: String
                       , monikerIdentifier :: String
                       , monikerUnique :: UniquenessLevel
                       , monikerKind :: Maybe MonikerKind }

data MonikerRegistrationOptions = MonikerRegistrationOptions {  }

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams {  }

data TypeHierarchyItem = TypeHierarchyItem { typeHierarchyItemName :: String
                                           , typeHierarchyItemKind :: SymbolKind
                                           , typeHierarchyItemTags :: Maybe [SymbolTag]
                                           , typeHierarchyItemDetail :: Maybe String
                                           , typeHierarchyItemUri :: LSP.Protocol.Support.DocumentUri
                                           , typeHierarchyItemRange :: Range
                                           , typeHierarchyItemSelectionRange :: Range
                                           , typeHierarchyItemData :: Maybe LSPAny }

data TypeHierarchyRegistrationOptions = TypeHierarchyRegistrationOptions {  }

data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem :: TypeHierarchyItem }

data TypeHierarchySubtypesParams = TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem :: TypeHierarchyItem }

data InlineValueParams = InlineValueParams { inlineValueParamsTextDocument :: TextDocumentIdentifier
                                           , inlineValueParamsRange :: Range
                                           , inlineValueParamsContext :: InlineValueContext }

data InlineValueRegistrationOptions = InlineValueRegistrationOptions {  }

data InlayHintParams = InlayHintParams { inlayHintParamsTextDocument :: TextDocumentIdentifier
                                       , inlayHintParamsRange :: Range }

data InlayHint = InlayHint { inlayHintPosition :: Position
                           , inlayHintLabel :: Either String [InlayHintLabelPart]
                           , inlayHintKind :: Maybe InlayHintKind
                           , inlayHintTextEdits :: Maybe [TextEdit]
                           , inlayHintTooltip :: Maybe (Either String MarkupContent)
                           , inlayHintPaddingLeft :: Maybe Bool
                           , inlayHintPaddingRight :: Maybe Bool
                           , inlayHintData :: Maybe LSPAny }

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }

data DocumentDiagnosticParams = DocumentDiagnosticParams { documentDiagnosticParamsTextDocument :: TextDocumentIdentifier
                                                         , documentDiagnosticParamsIdentifier :: Maybe String
                                                         , documentDiagnosticParamsPreviousResultId :: Maybe String }

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments :: Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport) }

data DiagnosticServerCancellationData = DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest :: Bool }

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions {  }

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier :: Maybe String
                                                           , workspaceDiagnosticParamsPreviousResultIds :: [PreviousResultId] }

data WorkspaceDiagnosticReport = WorkspaceDiagnosticReport { workspaceDiagnosticReportItems :: [WorkspaceDocumentDiagnosticReport] }

data WorkspaceDiagnosticReportPartialResult = WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems :: [WorkspaceDocumentDiagnosticReport] }

data DidOpenNotebookDocumentParams = DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument :: NotebookDocument
                                                                   , didOpenNotebookDocumentParamsCellTextDocuments :: [TextDocumentItem] }

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , didChangeNotebookDocumentParamsChange :: NotebookDocumentChangeEvent }

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier }

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier
                                                                     , didCloseNotebookDocumentParamsCellTextDocuments :: [TextDocumentIdentifier] }

data RegistrationParams = RegistrationParams { registrationParamsRegistrations :: [Registration] }

data UnregistrationParams = UnregistrationParams { unregistrationParamsUnregisterations :: [Unregistration] }

data InitializeParams = InitializeParams {  }

data InitializeResult = InitializeResult { initializeResultCapabilities :: ServerCapabilities
                                         , initializeResultServerInfo :: Maybe () }

data InitializeError = InitializeError { initializeErrorRetry :: Bool }

data InitializedParams = InitializedParams {  }

data DidChangeConfigurationParams = DidChangeConfigurationParams { didChangeConfigurationParamsSettings :: LSPAny }

data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection :: Maybe (Either String [String]) }

data ShowMessageParams = ShowMessageParams { showMessageParamsType :: MessageType
                                           , showMessageParamsMessage :: String }

data ShowMessageRequestParams = ShowMessageRequestParams { showMessageRequestParamsType :: MessageType
                                                         , showMessageRequestParamsMessage :: String
                                                         , showMessageRequestParamsActions :: Maybe [MessageActionItem] }

data MessageActionItem = MessageActionItem { messageActionItemTitle :: String }

data LogMessageParams = LogMessageParams { logMessageParamsType :: MessageType
                                         , logMessageParamsMessage :: String }

data DidOpenTextDocumentParams = DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument :: TextDocumentItem }

data DidChangeTextDocumentParams = DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument :: VersionedTextDocumentIdentifier
                                                               , didChangeTextDocumentParamsContentChanges :: [TextDocumentContentChangeEvent] }

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind :: TextDocumentSyncKind }

data DidCloseTextDocumentParams = DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument :: TextDocumentIdentifier }

data DidSaveTextDocumentParams = DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                           , didSaveTextDocumentParamsText :: Maybe String }

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions {  }

data WillSaveTextDocumentParams = WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument :: TextDocumentIdentifier
                                                             , willSaveTextDocumentParamsReason :: TextDocumentSaveReason }

data TextEdit = TextEdit { textEditRange :: Range, textEditNewText :: String }

data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges :: [FileEvent] }

data DidChangeWatchedFilesRegistrationOptions = DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers :: [FileSystemWatcher] }

data PublishDiagnosticsParams = PublishDiagnosticsParams { publishDiagnosticsParamsUri :: LSP.Protocol.Support.DocumentUri
                                                         , publishDiagnosticsParamsVersion :: Maybe Int
                                                         , publishDiagnosticsParamsDiagnostics :: [Diagnostic] }

data CompletionParams = CompletionParams { completionParamsContext :: Maybe CompletionContext }

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

data CompletionList = CompletionList { completionListIsIncomplete :: Bool
                                     , completionListItemDefaults :: Maybe ()
                                     , completionListItems :: [CompletionItem] }

data CompletionRegistrationOptions = CompletionRegistrationOptions {  }

data HoverParams = HoverParams {  }

data Hover = Hover { hoverContents :: Either (Either MarkupContent MarkedString) [MarkedString]
                   , hoverRange :: Maybe Range }

data HoverRegistrationOptions = HoverRegistrationOptions {  }

data SignatureHelpParams = SignatureHelpParams { signatureHelpParamsContext :: Maybe SignatureHelpContext }

data SignatureHelp = SignatureHelp { signatureHelpSignatures :: [SignatureInformation]
                                   , signatureHelpActiveSignature :: Maybe Int
                                   , signatureHelpActiveParameter :: Maybe Int }

data SignatureHelpRegistrationOptions = SignatureHelpRegistrationOptions {  }

data DefinitionParams = DefinitionParams {  }

data DefinitionRegistrationOptions = DefinitionRegistrationOptions {  }

data ReferenceParams = ReferenceParams { referenceParamsContext :: ReferenceContext }

data ReferenceRegistrationOptions = ReferenceRegistrationOptions {  }

data DocumentHighlightParams = DocumentHighlightParams {  }

data DocumentHighlight = DocumentHighlight { documentHighlightRange :: Range
                                           , documentHighlightKind :: Maybe DocumentHighlightKind }

data DocumentHighlightRegistrationOptions = DocumentHighlightRegistrationOptions {  }

data DocumentSymbolParams = DocumentSymbolParams { documentSymbolParamsTextDocument :: TextDocumentIdentifier }

data SymbolInformation = SymbolInformation { symbolInformationDeprecated :: Maybe Bool
                                           , symbolInformationLocation :: Location }

data DocumentSymbol = DocumentSymbol { documentSymbolName :: String
                                     , documentSymbolDetail :: Maybe String
                                     , documentSymbolKind :: SymbolKind
                                     , documentSymbolTags :: Maybe [SymbolTag]
                                     , documentSymbolDeprecated :: Maybe Bool
                                     , documentSymbolRange :: Range
                                     , documentSymbolSelectionRange :: Range
                                     , documentSymbolChildren :: Maybe [DocumentSymbol] }

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions {  }

data CodeActionParams = CodeActionParams { codeActionParamsTextDocument :: TextDocumentIdentifier
                                         , codeActionParamsRange :: Range
                                         , codeActionParamsContext :: CodeActionContext }

data Command = Command { commandTitle :: String
                       , commandCommand :: String
                       , commandArguments :: Maybe [LSPAny] }

data CodeAction = CodeAction { codeActionTitle :: String
                             , codeActionKind :: Maybe CodeActionKind
                             , codeActionDiagnostics :: Maybe [Diagnostic]
                             , codeActionIsPreferred :: Maybe Bool
                             , codeActionDisabled :: Maybe ()
                             , codeActionEdit :: Maybe WorkspaceEdit
                             , codeActionCommand :: Maybe Command
                             , codeActionData :: Maybe LSPAny }

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsQuery :: String }

data WorkspaceSymbol = WorkspaceSymbol { workspaceSymbolLocation :: Either Location ()
                                       , workspaceSymbolData :: Maybe LSPAny }

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions {  }

data CodeLensParams = CodeLensParams { codeLensParamsTextDocument :: TextDocumentIdentifier }

data CodeLens = CodeLens { codeLensRange :: Range
                         , codeLensCommand :: Maybe Command
                         , codeLensData :: Maybe LSPAny }

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }

data DocumentLinkParams = DocumentLinkParams { documentLinkParamsTextDocument :: TextDocumentIdentifier }

data DocumentLink = DocumentLink { documentLinkRange :: Range
                                 , documentLinkTarget :: Maybe String
                                 , documentLinkTooltip :: Maybe String
                                 , documentLinkData :: Maybe LSPAny }

data DocumentLinkRegistrationOptions = DocumentLinkRegistrationOptions {  }

data DocumentFormattingParams = DocumentFormattingParams { documentFormattingParamsTextDocument :: TextDocumentIdentifier
                                                         , documentFormattingParamsOptions :: FormattingOptions }

data DocumentFormattingRegistrationOptions = DocumentFormattingRegistrationOptions {  }

data DocumentRangeFormattingParams = DocumentRangeFormattingParams { documentRangeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                   , documentRangeFormattingParamsRange :: Range
                                                                   , documentRangeFormattingParamsOptions :: FormattingOptions }

data DocumentRangeFormattingRegistrationOptions = DocumentRangeFormattingRegistrationOptions {  }

data DocumentOnTypeFormattingParams = DocumentOnTypeFormattingParams { documentOnTypeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                     , documentOnTypeFormattingParamsPosition :: Position
                                                                     , documentOnTypeFormattingParamsCh :: String
                                                                     , documentOnTypeFormattingParamsOptions :: FormattingOptions }

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions {  }

data RenameParams = RenameParams { renameParamsTextDocument :: TextDocumentIdentifier
                                 , renameParamsPosition :: Position
                                 , renameParamsNewName :: String }

data RenameRegistrationOptions = RenameRegistrationOptions {  }

data PrepareRenameParams = PrepareRenameParams {  }

data ExecuteCommandParams = ExecuteCommandParams { executeCommandParamsCommand :: String
                                                 , executeCommandParamsArguments :: Maybe [LSPAny] }

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions {  }

data ApplyWorkspaceEditParams = ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel :: Maybe String
                                                         , applyWorkspaceEditParamsEdit :: WorkspaceEdit }

data ApplyWorkspaceEditResult = ApplyWorkspaceEditResult { applyWorkspaceEditResultApplied :: Bool
                                                         , applyWorkspaceEditResultFailureReason :: Maybe String
                                                         , applyWorkspaceEditResultFailedChange :: Maybe Int }

data WorkDoneProgressBegin = WorkDoneProgressBegin { workDoneProgressBeginKind :: String
                                                   , workDoneProgressBeginTitle :: String
                                                   , workDoneProgressBeginCancellable :: Maybe Bool
                                                   , workDoneProgressBeginMessage :: Maybe String
                                                   , workDoneProgressBeginPercentage :: Maybe Int }

data WorkDoneProgressReport = WorkDoneProgressReport { workDoneProgressReportKind :: String
                                                     , workDoneProgressReportCancellable :: Maybe Bool
                                                     , workDoneProgressReportMessage :: Maybe String
                                                     , workDoneProgressReportPercentage :: Maybe Int }

data WorkDoneProgressEnd = WorkDoneProgressEnd { workDoneProgressEndKind :: String
                                               , workDoneProgressEndMessage :: Maybe String }

data SetTraceParams = SetTraceParams { setTraceParamsValue :: TraceValues }

data LogTraceParams = LogTraceParams { logTraceParamsMessage :: String
                                     , logTraceParamsVerbose :: Maybe String }

data CancelParams = CancelParams { cancelParamsId :: Either Int String }

data ProgressParams = ProgressParams { progressParamsToken :: ProgressToken
                                     , progressParamsValue :: LSPAny }

data TextDocumentPositionParams = TextDocumentPositionParams { textDocumentPositionParamsTextDocument :: TextDocumentIdentifier
                                                             , textDocumentPositionParamsPosition :: Position }

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken :: Maybe ProgressToken }

data LocationLink = LocationLink { locationLinkOriginSelectionRange :: Maybe Range
                                 , locationLinkTargetUri :: LSP.Protocol.Support.DocumentUri
                                 , locationLinkTargetRange :: Range
                                 , locationLinkTargetSelectionRange :: Range }

data Range = Range { rangeStart :: Position, rangeEnd :: Position }

data ImplementationOptions = ImplementationOptions {  }

data StaticRegistrationOptions = StaticRegistrationOptions { staticRegistrationOptionsId :: Maybe String }

data TypeDefinitionOptions = TypeDefinitionOptions {  }

data WorkspaceFoldersChangeEvent = WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded :: [WorkspaceFolder]
                                                               , workspaceFoldersChangeEventRemoved :: [WorkspaceFolder] }

data ConfigurationItem = ConfigurationItem { configurationItemScopeUri :: Maybe String
                                           , configurationItemSection :: Maybe String }

data TextDocumentIdentifier = TextDocumentIdentifier { textDocumentIdentifierUri :: LSP.Protocol.Support.DocumentUri }

data Color = Color { colorRed :: Float
                   , colorGreen :: Float
                   , colorBlue :: Float
                   , colorAlpha :: Float }

data DocumentColorOptions = DocumentColorOptions {  }

data FoldingRangeOptions = FoldingRangeOptions {  }

data DeclarationOptions = DeclarationOptions {  }

data Position = Position { positionLine :: Int, positionCharacter :: Int }

data SelectionRangeOptions = SelectionRangeOptions {  }

data CallHierarchyOptions = CallHierarchyOptions {  }

data SemanticTokensOptions = SemanticTokensOptions { semanticTokensOptionsLegend :: SemanticTokensLegend
                                                   , semanticTokensOptionsRange :: Maybe (Either Bool ())
                                                   , semanticTokensOptionsFull :: Maybe (Either Bool ()) }

data SemanticTokensEdit = SemanticTokensEdit { semanticTokensEditStart :: Int
                                             , semanticTokensEditDeleteCount :: Int
                                             , semanticTokensEditData :: Maybe [Int] }

data LinkedEditingRangeOptions = LinkedEditingRangeOptions {  }

data FileCreate = FileCreate { fileCreateUri :: String }

data TextDocumentEdit = TextDocumentEdit { textDocumentEditTextDocument :: OptionalVersionedTextDocumentIdentifier
                                         , textDocumentEditEdits :: [Either TextEdit AnnotatedTextEdit] }

data CreateFile = CreateFile { createFileKind :: String
                             , createFileUri :: LSP.Protocol.Support.DocumentUri
                             , createFileOptions :: Maybe CreateFileOptions }

data RenameFile = RenameFile { renameFileKind :: String
                             , renameFileOldUri :: LSP.Protocol.Support.DocumentUri
                             , renameFileNewUri :: LSP.Protocol.Support.DocumentUri
                             , renameFileOptions :: Maybe RenameFileOptions }

data DeleteFile = DeleteFile { deleteFileKind :: String
                             , deleteFileUri :: LSP.Protocol.Support.DocumentUri
                             , deleteFileOptions :: Maybe DeleteFileOptions }

data ChangeAnnotation = ChangeAnnotation { changeAnnotationLabel :: String
                                         , changeAnnotationNeedsConfirmation :: Maybe Bool
                                         , changeAnnotationDescription :: Maybe String }

data FileOperationFilter = FileOperationFilter { fileOperationFilterScheme :: Maybe String
                                               , fileOperationFilterPattern :: FileOperationPattern }

data FileRename = FileRename { fileRenameOldUri :: String
                             , fileRenameNewUri :: String }

data FileDelete = FileDelete { fileDeleteUri :: String }

data MonikerOptions = MonikerOptions {  }

data TypeHierarchyOptions = TypeHierarchyOptions {  }

data InlineValueContext = InlineValueContext { inlineValueContextFrameId :: Int
                                             , inlineValueContextStoppedLocation :: Range }

data InlineValueText = InlineValueText { inlineValueTextRange :: Range
                                       , inlineValueTextText :: String }

data InlineValueVariableLookup = InlineValueVariableLookup { inlineValueVariableLookupRange :: Range
                                                           , inlineValueVariableLookupVariableName :: Maybe String
                                                           , inlineValueVariableLookupCaseSensitiveLookup :: Bool }

data InlineValueEvaluatableExpression = InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange :: Range
                                                                         , inlineValueEvaluatableExpressionExpression :: Maybe String }

data InlineValueOptions = InlineValueOptions {  }

data InlayHintLabelPart = InlayHintLabelPart { inlayHintLabelPartValue :: String
                                             , inlayHintLabelPartTooltip :: Maybe (Either String MarkupContent)
                                             , inlayHintLabelPartLocation :: Maybe Location
                                             , inlayHintLabelPartCommand :: Maybe Command }

data MarkupContent = MarkupContent { markupContentKind :: MarkupKind
                                   , markupContentValue :: String }

data InlayHintOptions = InlayHintOptions { inlayHintOptionsResolveProvider :: Maybe Bool }

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportRelatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }

data FullDocumentDiagnosticReport = FullDocumentDiagnosticReport { fullDocumentDiagnosticReportKind :: String
                                                                 , fullDocumentDiagnosticReportResultId :: Maybe String
                                                                 , fullDocumentDiagnosticReportItems :: [Diagnostic] }

data UnchangedDocumentDiagnosticReport = UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind :: String
                                                                           , unchangedDocumentDiagnosticReportResultId :: String }

data DiagnosticOptions = DiagnosticOptions { diagnosticOptionsIdentifier :: Maybe String
                                           , diagnosticOptionsInterFileDependencies :: Bool
                                           , diagnosticOptionsWorkspaceDiagnostics :: Bool }

data PreviousResultId = PreviousResultId { previousResultIdUri :: LSP.Protocol.Support.DocumentUri
                                         , previousResultIdValue :: String }

data NotebookDocument = NotebookDocument { notebookDocumentUri :: URI
                                         , notebookDocumentNotebookType :: String
                                         , notebookDocumentVersion :: Int
                                         , notebookDocumentMetadata :: Maybe LSPObject
                                         , notebookDocumentCells :: [NotebookCell] }

data TextDocumentItem = TextDocumentItem { textDocumentItemUri :: LSP.Protocol.Support.DocumentUri
                                         , textDocumentItemLanguageId :: String
                                         , textDocumentItemVersion :: Int
                                         , textDocumentItemText :: String }

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion :: Int
                                                                               , versionedNotebookDocumentIdentifierUri :: URI }

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata :: Maybe LSPObject
                                                               , notebookDocumentChangeEventCells :: Maybe () }

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { notebookDocumentIdentifierUri :: URI }

data Registration = Registration { registrationId :: String
                                 , registrationMethod :: String
                                 , registrationRegisterOptions :: Maybe LSPAny }

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }

data BaseInitializeParams = BaseInitializeParams { baseInitializeParamsProcessId :: Either Int ()
                                                 , baseInitializeParamsClientInfo :: Maybe ()
                                                 , baseInitializeParamsLocale :: Maybe String
                                                 , baseInitializeParamsRootPath :: Maybe (Either String ())
                                                 , baseInitializeParamsRootUri :: Either LSP.Protocol.Support.DocumentUri ()
                                                 , baseInitializeParamsCapabilities :: ClientCapabilities
                                                 , baseInitializeParamsInitializationOptions :: Maybe LSPAny
                                                 , baseInitializeParamsTrace :: Maybe (Either (Either (Either String String) String) String) }

data WorkspaceFoldersInitializeParams = WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders :: Maybe (Either [WorkspaceFolder] ()) }

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

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion :: Int }

data SaveOptions = SaveOptions { saveOptionsIncludeText :: Maybe Bool }

data FileEvent = FileEvent { fileEventUri :: LSP.Protocol.Support.DocumentUri
                           , fileEventType :: FileChangeType }

data FileSystemWatcher = FileSystemWatcher { fileSystemWatcherGlobPattern :: GlobPattern
                                           , fileSystemWatcherKind :: Maybe WatchKind }

data Diagnostic = Diagnostic { diagnosticRange :: Range
                             , diagnosticSeverity :: Maybe DiagnosticSeverity
                             , diagnosticCode :: Maybe (Either Int String)
                             , diagnosticCodeDescription :: Maybe CodeDescription
                             , diagnosticSource :: Maybe String
                             , diagnosticMessage :: String
                             , diagnosticTags :: Maybe [DiagnosticTag]
                             , diagnosticRelatedInformation :: Maybe [DiagnosticRelatedInformation]
                             , diagnosticData :: Maybe LSPAny }

data CompletionContext = CompletionContext { completionContextTriggerKind :: CompletionTriggerKind
                                           , completionContextTriggerCharacter :: Maybe String }

data CompletionItemLabelDetails = CompletionItemLabelDetails { completionItemLabelDetailsDetail :: Maybe String
                                                             , completionItemLabelDetailsDescription :: Maybe String }

data InsertReplaceEdit = InsertReplaceEdit { insertReplaceEditNewText :: String
                                           , insertReplaceEditInsert :: Range
                                           , insertReplaceEditReplace :: Range }

data CompletionOptions = CompletionOptions { completionOptionsTriggerCharacters :: Maybe [String]
                                           , completionOptionsAllCommitCharacters :: Maybe [String]
                                           , completionOptionsResolveProvider :: Maybe Bool
                                           , completionOptionsCompletionItem :: Maybe () }

data HoverOptions = HoverOptions {  }

data SignatureHelpContext = SignatureHelpContext { signatureHelpContextTriggerKind :: SignatureHelpTriggerKind
                                                 , signatureHelpContextTriggerCharacter :: Maybe String
                                                 , signatureHelpContextIsRetrigger :: Bool
                                                 , signatureHelpContextActiveSignatureHelp :: Maybe SignatureHelp }

data SignatureInformation = SignatureInformation { signatureInformationLabel :: String
                                                 , signatureInformationDocumentation :: Maybe (Either String MarkupContent)
                                                 , signatureInformationParameters :: Maybe [ParameterInformation]
                                                 , signatureInformationActiveParameter :: Maybe Int }

data SignatureHelpOptions = SignatureHelpOptions { signatureHelpOptionsTriggerCharacters :: Maybe [String]
                                                 , signatureHelpOptionsRetriggerCharacters :: Maybe [String] }

data DefinitionOptions = DefinitionOptions {  }

data ReferenceContext = ReferenceContext { referenceContextIncludeDeclaration :: Bool }

data ReferenceOptions = ReferenceOptions {  }

data DocumentHighlightOptions = DocumentHighlightOptions {  }

data BaseSymbolInformation = BaseSymbolInformation { baseSymbolInformationName :: String
                                                   , baseSymbolInformationKind :: SymbolKind
                                                   , baseSymbolInformationTags :: Maybe [SymbolTag]
                                                   , baseSymbolInformationContainerName :: Maybe String }

data DocumentSymbolOptions = DocumentSymbolOptions { documentSymbolOptionsLabel :: Maybe String }

data CodeActionContext = CodeActionContext { codeActionContextDiagnostics :: [Diagnostic]
                                           , codeActionContextOnly :: Maybe [CodeActionKind]
                                           , codeActionContextTriggerKind :: Maybe CodeActionTriggerKind }

data CodeActionOptions = CodeActionOptions { codeActionOptionsCodeActionKinds :: Maybe [CodeActionKind]
                                           , codeActionOptionsResolveProvider :: Maybe Bool }

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider :: Maybe Bool }

data CodeLensOptions = CodeLensOptions { codeLensOptionsResolveProvider :: Maybe Bool }

data DocumentLinkOptions = DocumentLinkOptions { documentLinkOptionsResolveProvider :: Maybe Bool }

data FormattingOptions = FormattingOptions { formattingOptionsTabSize :: Int
                                           , formattingOptionsInsertSpaces :: Bool
                                           , formattingOptionsTrimTrailingWhitespace :: Maybe Bool
                                           , formattingOptionsInsertFinalNewline :: Maybe Bool
                                           , formattingOptionsTrimFinalNewlines :: Maybe Bool }

data DocumentFormattingOptions = DocumentFormattingOptions {  }

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions {  }

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter :: String
                                                                       , documentOnTypeFormattingOptionsMoreTriggerCharacter :: Maybe [String] }

data RenameOptions = RenameOptions { renameOptionsPrepareProvider :: Maybe Bool }

data ExecuteCommandOptions = ExecuteCommandOptions { executeCommandOptionsCommands :: [String] }

data SemanticTokensLegend = SemanticTokensLegend { semanticTokensLegendTokenTypes :: [String]
                                                 , semanticTokensLegendTokenModifiers :: [String] }

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion :: Either Int () }

data AnnotatedTextEdit = AnnotatedTextEdit { annotatedTextEditAnnotationId :: ChangeAnnotationIdentifier }

data ResourceOperation = ResourceOperation { resourceOperationKind :: String
                                           , resourceOperationAnnotationId :: Maybe ChangeAnnotationIdentifier }

data CreateFileOptions = CreateFileOptions { createFileOptionsOverwrite :: Maybe Bool
                                           , createFileOptionsIgnoreIfExists :: Maybe Bool }

data RenameFileOptions = RenameFileOptions { renameFileOptionsOverwrite :: Maybe Bool
                                           , renameFileOptionsIgnoreIfExists :: Maybe Bool }

data DeleteFileOptions = DeleteFileOptions { deleteFileOptionsRecursive :: Maybe Bool
                                           , deleteFileOptionsIgnoreIfNotExists :: Maybe Bool }

data FileOperationPattern = FileOperationPattern { fileOperationPatternGlob :: String
                                                 , fileOperationPatternMatches :: Maybe FileOperationPatternKind
                                                 , fileOperationPatternOptions :: Maybe FileOperationPatternOptions }

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportUri :: LSP.Protocol.Support.DocumentUri
                                                                                   , workspaceFullDocumentDiagnosticReportVersion :: Either Int () }

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportUri :: LSP.Protocol.Support.DocumentUri
                                                                                             , workspaceUnchangedDocumentDiagnosticReportVersion :: Either Int () }

data LSPObject = LSPObject {  }

data NotebookCell = NotebookCell { notebookCellKind :: NotebookCellKind
                                 , notebookCellDocument :: LSP.Protocol.Support.DocumentUri
                                 , notebookCellMetadata :: Maybe LSPObject
                                 , notebookCellExecutionSummary :: Maybe ExecutionSummary }

data NotebookCellArrayChange = NotebookCellArrayChange { notebookCellArrayChangeStart :: Int
                                                       , notebookCellArrayChangeDeleteCount :: Int
                                                       , notebookCellArrayChangeCells :: Maybe [NotebookCell] }

data ClientCapabilities = ClientCapabilities { clientCapabilitiesWorkspace :: Maybe WorkspaceClientCapabilities
                                             , clientCapabilitiesTextDocument :: Maybe TextDocumentClientCapabilities
                                             , clientCapabilitiesNotebookDocument :: Maybe NotebookDocumentClientCapabilities
                                             , clientCapabilitiesWindow :: Maybe WindowClientCapabilities
                                             , clientCapabilitiesGeneral :: Maybe GeneralClientCapabilities
                                             , clientCapabilitiesExperimental :: Maybe LSPAny }

data TextDocumentSyncOptions = TextDocumentSyncOptions { textDocumentSyncOptionsOpenClose :: Maybe Bool
                                                       , textDocumentSyncOptionsChange :: Maybe TextDocumentSyncKind
                                                       , textDocumentSyncOptionsWillSave :: Maybe Bool
                                                       , textDocumentSyncOptionsWillSaveWaitUntil :: Maybe Bool
                                                       , textDocumentSyncOptionsSave :: Maybe (Either Bool SaveOptions) }

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector :: [Either () ()]
                                                               , notebookDocumentSyncOptionsSave :: Maybe Bool }

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }

data WorkspaceFoldersServerCapabilities = WorkspaceFoldersServerCapabilities { workspaceFoldersServerCapabilitiesSupported :: Maybe Bool
                                                                             , workspaceFoldersServerCapabilitiesChangeNotifications :: Maybe (Either String Bool) }

data FileOperationOptions = FileOperationOptions { fileOperationOptionsDidCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidDelete :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillDelete :: Maybe FileOperationRegistrationOptions }

data CodeDescription = CodeDescription { codeDescriptionHref :: URI }

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { diagnosticRelatedInformationLocation :: Location
                                                                 , diagnosticRelatedInformationMessage :: String }

data ParameterInformation = ParameterInformation { parameterInformationLabel :: Either String (Int
                                                                                              ,Int)
                                                 , parameterInformationDocumentation :: Maybe (Either String MarkupContent) }

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook :: Either String NotebookDocumentFilter
                                                                     , notebookCellTextDocumentFilterLanguage :: Maybe String }

data FileOperationPatternOptions = FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase :: Maybe Bool }

data ExecutionSummary = ExecutionSummary { executionSummaryExecutionOrder :: Int
                                         , executionSummarySuccess :: Maybe Bool }

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

data NotebookDocumentClientCapabilities = NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization :: NotebookDocumentSyncClientCapabilities }

data WindowClientCapabilities = WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress :: Maybe Bool
                                                         , windowClientCapabilitiesShowMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , windowClientCapabilitiesShowDocument :: Maybe ShowDocumentClientCapabilities }

data GeneralClientCapabilities = GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport :: Maybe ()
                                                           , generalClientCapabilitiesRegularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , generalClientCapabilitiesMarkdown :: Maybe MarkdownClientCapabilities
                                                           , generalClientCapabilitiesPositionEncodings :: Maybe [PositionEncodingKind] }

data RelativePattern = RelativePattern { relativePatternBaseUri :: Either WorkspaceFolder URI
                                       , relativePatternPattern :: Pattern }

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesResourceOperations :: Maybe [ResourceOperationKind]
                                                                       , workspaceEditClientCapabilitiesFailureHandling :: Maybe FailureHandlingKind
                                                                       , workspaceEditClientCapabilitiesNormalizesLineEndings :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesChangeAnnotationSupport :: Maybe () }

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                       , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport :: Maybe Bool }

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                           , workspaceSymbolClientCapabilitiesSymbolKind :: Maybe ()
                                                                           , workspaceSymbolClientCapabilitiesTagSupport :: Maybe ()
                                                                           , workspaceSymbolClientCapabilitiesResolveSupport :: Maybe () }

data ExecuteCommandClientCapabilities = ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration :: Maybe Bool }

data SemanticTokensWorkspaceClientCapabilities = SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }

data CodeLensWorkspaceClientCapabilities = CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }

data FileOperationClientCapabilities = FileOperationClientCapabilities { fileOperationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidDelete :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillDelete :: Maybe Bool }

data InlineValueWorkspaceClientCapabilities = InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }

data InlayHintWorkspaceClientCapabilities = InlayHintWorkspaceClientCapabilities { inlayHintWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }

data DiagnosticWorkspaceClientCapabilities = DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSave :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSaveWaitUntil :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesDidSave :: Maybe Bool }

data CompletionClientCapabilities = CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionItem :: Maybe ()
                                                                 , completionClientCapabilitiesCompletionItemKind :: Maybe ()
                                                                 , completionClientCapabilitiesInsertTextMode :: Maybe InsertTextMode
                                                                 , completionClientCapabilitiesContextSupport :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionList :: Maybe () }

data HoverClientCapabilities = HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                       , hoverClientCapabilitiesContentFormat :: Maybe [MarkupKind] }

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , signatureHelpClientCapabilitiesSignatureInformation :: Maybe ()
                                                                       , signatureHelpClientCapabilitiesContextSupport :: Maybe Bool }

data DeclarationClientCapabilities = DeclarationClientCapabilities { declarationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                   , declarationClientCapabilitiesLinkSupport :: Maybe Bool }

data DefinitionClientCapabilities = DefinitionClientCapabilities { definitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , definitionClientCapabilitiesLinkSupport :: Maybe Bool }

data TypeDefinitionClientCapabilities = TypeDefinitionClientCapabilities { typeDefinitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , typeDefinitionClientCapabilitiesLinkSupport :: Maybe Bool }

data ImplementationClientCapabilities = ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , implementationClientCapabilitiesLinkSupport :: Maybe Bool }

data ReferenceClientCapabilities = ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentHighlightClientCapabilities = DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentSymbolClientCapabilities = DocumentSymbolClientCapabilities { documentSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesSymbolKind :: Maybe ()
                                                                         , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesTagSupport :: Maybe ()
                                                                         , documentSymbolClientCapabilitiesLabelSupport :: Maybe Bool }

data CodeActionClientCapabilities = CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , codeActionClientCapabilitiesCodeActionLiteralSupport :: Maybe ()
                                                                 , codeActionClientCapabilitiesIsPreferredSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDisabledSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDataSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesResolveSupport :: Maybe ()
                                                                 , codeActionClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool }

data CodeLensClientCapabilities = CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , documentLinkClientCapabilitiesTooltipSupport :: Maybe Bool }

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }

data DocumentOnTypeFormattingClientCapabilities = DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }

data RenameClientCapabilities = RenameClientCapabilities { renameClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupport :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupportDefaultBehavior :: Maybe PrepareSupportDefaultBehavior
                                                         , renameClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool }

data FoldingRangeClientCapabilities = FoldingRangeClientCapabilities { foldingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesRangeLimit :: Maybe Int
                                                                     , foldingRangeClientCapabilitiesLineFoldingOnly :: Maybe Bool
                                                                     , foldingRangeClientCapabilitiesFoldingRangeKind :: Maybe ()
                                                                     , foldingRangeClientCapabilitiesFoldingRange :: Maybe () }

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesRelatedInformation :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesTagSupport :: Maybe ()
                                                                                 , publishDiagnosticsClientCapabilitiesVersionSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesDataSupport :: Maybe Bool }

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesRequests :: ()
                                                                         , semanticTokensClientCapabilitiesTokenTypes :: [String]
                                                                         , semanticTokensClientCapabilitiesTokenModifiers :: [String]
                                                                         , semanticTokensClientCapabilitiesFormats :: [TokenFormat]
                                                                         , semanticTokensClientCapabilitiesOverlappingTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesMultilineTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesServerCancelSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesAugmentsSyntaxTokens :: Maybe Bool }

data LinkedEditingRangeClientCapabilities = LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }

data MonikerClientCapabilities = MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration :: Maybe Bool }

data TypeHierarchyClientCapabilities = TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }

data InlineValueClientCapabilities = InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration :: Maybe Bool }

data InlayHintClientCapabilities = InlayHintClientCapabilities { inlayHintClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                               , inlayHintClientCapabilitiesResolveSupport :: Maybe () }

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesRelatedDocumentSupport :: Maybe Bool }

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                     , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport :: Maybe Bool }

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem :: Maybe () }

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport :: Bool }

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine :: String
                                                                                 , regularExpressionsClientCapabilitiesVersion :: Maybe String }

data MarkdownClientCapabilities = MarkdownClientCapabilities { markdownClientCapabilitiesParser :: String
                                                             , markdownClientCapabilitiesVersion :: Maybe String
                                                             , markdownClientCapabilitiesAllowedTags :: Maybe [String] }

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