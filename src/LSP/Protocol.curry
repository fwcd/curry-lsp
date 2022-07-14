-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol where

data ImplementationParams = ImplementationParams {  }

data Location = Location { uri :: (), range :: Range }

data ImplementationRegistrationOptions = ImplementationRegistrationOptions {  }

data TypeDefinitionParams = TypeDefinitionParams {  }

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions {  }

data WorkspaceFolder = WorkspaceFolder { uri :: URI, name :: () }

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { event :: WorkspaceFoldersChangeEvent }

data ConfigurationParams = ConfigurationParams { items :: () }

data PartialResultParams = PartialResultParams { partialResultToken :: Maybe ProgressToken }

data DocumentColorParams = DocumentColorParams { textDocument :: TextDocumentIdentifier }

data ColorInformation = ColorInformation { range :: Range, color :: Color }

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions {  }

data ColorPresentationParams = ColorPresentationParams { textDocument :: TextDocumentIdentifier
                                                       , color :: Color
                                                       , range :: Range }

data ColorPresentation = ColorPresentation { label :: ()
                                           , textEdit :: Maybe TextEdit
                                           , additionalTextEdits :: Maybe () }

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgress :: Maybe () }

data TextDocumentRegistrationOptions = TextDocumentRegistrationOptions { documentSelector :: () }

data FoldingRangeParams = FoldingRangeParams { textDocument :: TextDocumentIdentifier }

data FoldingRange = FoldingRange { startLine :: ()
                                 , startCharacter :: Maybe ()
                                 , endLine :: ()
                                 , endCharacter :: Maybe ()
                                 , kind :: Maybe FoldingRangeKind
                                 , collapsedText :: Maybe () }

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions {  }

data DeclarationParams = DeclarationParams {  }

data DeclarationRegistrationOptions = DeclarationRegistrationOptions {  }

data SelectionRangeParams = SelectionRangeParams { textDocument :: TextDocumentIdentifier
                                                 , positions :: () }

data SelectionRange = SelectionRange { range :: Range
                                     , parent :: Maybe SelectionRange }

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions {  }

data WorkDoneProgressCreateParams = WorkDoneProgressCreateParams { token :: ProgressToken }

data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams { token :: ProgressToken }

data CallHierarchyPrepareParams = CallHierarchyPrepareParams {  }

data CallHierarchyItem = CallHierarchyItem { name :: ()
                                           , kind :: SymbolKind
                                           , tags :: Maybe ()
                                           , detail :: Maybe ()
                                           , uri :: ()
                                           , range :: Range
                                           , selectionRange :: Range
                                           , data :: Maybe LSPAny }

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions {  }

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { item :: CallHierarchyItem }

data CallHierarchyIncomingCall = CallHierarchyIncomingCall { from :: CallHierarchyItem
                                                           , fromRanges :: () }

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { item :: CallHierarchyItem }

data CallHierarchyOutgoingCall = CallHierarchyOutgoingCall { to :: CallHierarchyItem
                                                           , fromRanges :: () }

data SemanticTokensParams = SemanticTokensParams { textDocument :: TextDocumentIdentifier }

data SemanticTokens = SemanticTokens { resultId :: Maybe (), data :: () }

data SemanticTokensPartialResult = SemanticTokensPartialResult { data :: () }

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions {  }

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { textDocument :: TextDocumentIdentifier
                                                           , previousResultId :: () }

data SemanticTokensDelta = SemanticTokensDelta { resultId :: Maybe ()
                                               , edits :: () }

data SemanticTokensDeltaPartialResult = SemanticTokensDeltaPartialResult { edits :: () }

data SemanticTokensRangeParams = SemanticTokensRangeParams { textDocument :: TextDocumentIdentifier
                                                           , range :: Range }

data ShowDocumentParams = ShowDocumentParams { uri :: URI
                                             , external :: Maybe ()
                                             , takeFocus :: Maybe ()
                                             , selection :: Maybe Range }

data ShowDocumentResult = ShowDocumentResult { success :: () }

data LinkedEditingRangeParams = LinkedEditingRangeParams {  }

data LinkedEditingRanges = LinkedEditingRanges { ranges :: ()
                                               , wordPattern :: Maybe () }

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions {  }

data CreateFilesParams = CreateFilesParams { files :: () }

data WorkspaceEdit = WorkspaceEdit { changes :: Maybe ()
                                   , documentChanges :: Maybe ()
                                   , changeAnnotations :: Maybe () }

data FileOperationRegistrationOptions = FileOperationRegistrationOptions { filters :: () }

data RenameFilesParams = RenameFilesParams { files :: () }

data DeleteFilesParams = DeleteFilesParams { files :: () }

data MonikerParams = MonikerParams {  }

data Moniker = Moniker { scheme :: ()
                       , identifier :: ()
                       , unique :: UniquenessLevel
                       , kind :: Maybe MonikerKind }

data MonikerRegistrationOptions = MonikerRegistrationOptions {  }

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams {  }

data TypeHierarchyItem = TypeHierarchyItem { name :: ()
                                           , kind :: SymbolKind
                                           , tags :: Maybe ()
                                           , detail :: Maybe ()
                                           , uri :: ()
                                           , range :: Range
                                           , selectionRange :: Range
                                           , data :: Maybe LSPAny }

data TypeHierarchyRegistrationOptions = TypeHierarchyRegistrationOptions {  }

data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams { item :: TypeHierarchyItem }

data TypeHierarchySubtypesParams = TypeHierarchySubtypesParams { item :: TypeHierarchyItem }

data InlineValueParams = InlineValueParams { textDocument :: TextDocumentIdentifier
                                           , range :: Range
                                           , context :: InlineValueContext }

data InlineValueRegistrationOptions = InlineValueRegistrationOptions {  }

data InlayHintParams = InlayHintParams { textDocument :: TextDocumentIdentifier
                                       , range :: Range }

data InlayHint = InlayHint { position :: Position
                           , label :: ()
                           , kind :: Maybe InlayHintKind
                           , textEdits :: Maybe ()
                           , tooltip :: Maybe ()
                           , paddingLeft :: Maybe ()
                           , paddingRight :: Maybe ()
                           , data :: Maybe LSPAny }

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }

data DocumentDiagnosticParams = DocumentDiagnosticParams { textDocument :: TextDocumentIdentifier
                                                         , identifier :: Maybe ()
                                                         , previousResultId :: Maybe () }

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { relatedDocuments :: () }

data DiagnosticServerCancellationData = DiagnosticServerCancellationData { retriggerRequest :: () }

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions {  }

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { identifier :: Maybe ()
                                                           , previousResultIds :: () }

data WorkspaceDiagnosticReport = WorkspaceDiagnosticReport { items :: () }

data WorkspaceDiagnosticReportPartialResult = WorkspaceDiagnosticReportPartialResult { items :: () }

data DidOpenNotebookDocumentParams = DidOpenNotebookDocumentParams { notebookDocument :: NotebookDocument
                                                                   , cellTextDocuments :: () }

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { notebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , change :: NotebookDocumentChangeEvent }

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { notebookDocument :: NotebookDocumentIdentifier }

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { notebookDocument :: NotebookDocumentIdentifier
                                                                     , cellTextDocuments :: () }

data RegistrationParams = RegistrationParams { registrations :: () }

data UnregistrationParams = UnregistrationParams { unregisterations :: () }

data InitializeParams = InitializeParams {  }

data InitializeResult = InitializeResult { capabilities :: ServerCapabilities
                                         , serverInfo :: Maybe () }

data InitializeError = InitializeError { retry :: () }

data InitializedParams = InitializedParams {  }

data DidChangeConfigurationParams = DidChangeConfigurationParams { settings :: LSPAny }

data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions { section :: Maybe () }

data ShowMessageParams = ShowMessageParams { type :: MessageType
                                           , message :: () }

data ShowMessageRequestParams = ShowMessageRequestParams { type :: MessageType
                                                         , message :: ()
                                                         , actions :: Maybe () }

data MessageActionItem = MessageActionItem { title :: () }

data LogMessageParams = LogMessageParams { type :: MessageType
                                         , message :: () }

data DidOpenTextDocumentParams = DidOpenTextDocumentParams { textDocument :: TextDocumentItem }

data DidChangeTextDocumentParams = DidChangeTextDocumentParams { textDocument :: VersionedTextDocumentIdentifier
                                                               , contentChanges :: () }

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { syncKind :: TextDocumentSyncKind }

data DidCloseTextDocumentParams = DidCloseTextDocumentParams { textDocument :: TextDocumentIdentifier }

data DidSaveTextDocumentParams = DidSaveTextDocumentParams { textDocument :: TextDocumentIdentifier
                                                           , text :: Maybe () }

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions {  }

data WillSaveTextDocumentParams = WillSaveTextDocumentParams { textDocument :: TextDocumentIdentifier
                                                             , reason :: TextDocumentSaveReason }

data TextEdit = TextEdit { range :: Range, newText :: () }

data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams { changes :: () }

data DidChangeWatchedFilesRegistrationOptions = DidChangeWatchedFilesRegistrationOptions { watchers :: () }

data PublishDiagnosticsParams = PublishDiagnosticsParams { uri :: ()
                                                         , version :: Maybe ()
                                                         , diagnostics :: () }

data CompletionParams = CompletionParams { context :: Maybe CompletionContext }

data CompletionItem = CompletionItem { label :: ()
                                     , labelDetails :: Maybe CompletionItemLabelDetails
                                     , kind :: Maybe CompletionItemKind
                                     , tags :: Maybe ()
                                     , detail :: Maybe ()
                                     , documentation :: Maybe ()
                                     , deprecated :: Maybe ()
                                     , preselect :: Maybe ()
                                     , sortText :: Maybe ()
                                     , filterText :: Maybe ()
                                     , insertText :: Maybe ()
                                     , insertTextFormat :: Maybe InsertTextFormat
                                     , insertTextMode :: Maybe InsertTextMode
                                     , textEdit :: Maybe ()
                                     , textEditText :: Maybe ()
                                     , additionalTextEdits :: Maybe ()
                                     , commitCharacters :: Maybe ()
                                     , command :: Maybe Command
                                     , data :: Maybe LSPAny }

data CompletionList = CompletionList { isIncomplete :: ()
                                     , itemDefaults :: Maybe ()
                                     , items :: () }

data CompletionRegistrationOptions = CompletionRegistrationOptions {  }

data HoverParams = HoverParams {  }

data Hover = Hover { contents :: (), range :: Maybe Range }

data HoverRegistrationOptions = HoverRegistrationOptions {  }

data SignatureHelpParams = SignatureHelpParams { context :: Maybe SignatureHelpContext }

data SignatureHelp = SignatureHelp { signatures :: ()
                                   , activeSignature :: Maybe ()
                                   , activeParameter :: Maybe () }

data SignatureHelpRegistrationOptions = SignatureHelpRegistrationOptions {  }

data DefinitionParams = DefinitionParams {  }

data DefinitionRegistrationOptions = DefinitionRegistrationOptions {  }

data ReferenceParams = ReferenceParams { context :: ReferenceContext }

data ReferenceRegistrationOptions = ReferenceRegistrationOptions {  }

data DocumentHighlightParams = DocumentHighlightParams {  }

data DocumentHighlight = DocumentHighlight { range :: Range
                                           , kind :: Maybe DocumentHighlightKind }

data DocumentHighlightRegistrationOptions = DocumentHighlightRegistrationOptions {  }

data DocumentSymbolParams = DocumentSymbolParams { textDocument :: TextDocumentIdentifier }

data SymbolInformation = SymbolInformation { deprecated :: Maybe ()
                                           , location :: Location }

data DocumentSymbol = DocumentSymbol { name :: ()
                                     , detail :: Maybe ()
                                     , kind :: SymbolKind
                                     , tags :: Maybe ()
                                     , deprecated :: Maybe ()
                                     , range :: Range
                                     , selectionRange :: Range
                                     , children :: Maybe () }

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions {  }

data CodeActionParams = CodeActionParams { textDocument :: TextDocumentIdentifier
                                         , range :: Range
                                         , context :: CodeActionContext }

data Command = Command { title :: (), command :: (), arguments :: Maybe () }

data CodeAction = CodeAction { title :: ()
                             , kind :: Maybe CodeActionKind
                             , diagnostics :: Maybe ()
                             , isPreferred :: Maybe ()
                             , disabled :: Maybe ()
                             , edit :: Maybe WorkspaceEdit
                             , command :: Maybe Command
                             , data :: Maybe LSPAny }

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }

data WorkspaceSymbolParams = WorkspaceSymbolParams { query :: () }

data WorkspaceSymbol = WorkspaceSymbol { location :: ()
                                       , data :: Maybe LSPAny }

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions {  }

data CodeLensParams = CodeLensParams { textDocument :: TextDocumentIdentifier }

data CodeLens = CodeLens { range :: Range
                         , command :: Maybe Command
                         , data :: Maybe LSPAny }

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }

data DocumentLinkParams = DocumentLinkParams { textDocument :: TextDocumentIdentifier }

data DocumentLink = DocumentLink { range :: Range
                                 , target :: Maybe ()
                                 , tooltip :: Maybe ()
                                 , data :: Maybe LSPAny }

data DocumentLinkRegistrationOptions = DocumentLinkRegistrationOptions {  }

data DocumentFormattingParams = DocumentFormattingParams { textDocument :: TextDocumentIdentifier
                                                         , options :: FormattingOptions }

data DocumentFormattingRegistrationOptions = DocumentFormattingRegistrationOptions {  }

data DocumentRangeFormattingParams = DocumentRangeFormattingParams { textDocument :: TextDocumentIdentifier
                                                                   , range :: Range
                                                                   , options :: FormattingOptions }

data DocumentRangeFormattingRegistrationOptions = DocumentRangeFormattingRegistrationOptions {  }

data DocumentOnTypeFormattingParams = DocumentOnTypeFormattingParams { textDocument :: TextDocumentIdentifier
                                                                     , position :: Position
                                                                     , ch :: ()
                                                                     , options :: FormattingOptions }

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions {  }

data RenameParams = RenameParams { textDocument :: TextDocumentIdentifier
                                 , position :: Position
                                 , newName :: () }

data RenameRegistrationOptions = RenameRegistrationOptions {  }

data PrepareRenameParams = PrepareRenameParams {  }

data ExecuteCommandParams = ExecuteCommandParams { command :: ()
                                                 , arguments :: Maybe () }

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions {  }

data ApplyWorkspaceEditParams = ApplyWorkspaceEditParams { label :: Maybe ()
                                                         , edit :: WorkspaceEdit }

data ApplyWorkspaceEditResult = ApplyWorkspaceEditResult { applied :: ()
                                                         , failureReason :: Maybe ()
                                                         , failedChange :: Maybe () }

data WorkDoneProgressBegin = WorkDoneProgressBegin { kind :: ()
                                                   , title :: ()
                                                   , cancellable :: Maybe ()
                                                   , message :: Maybe ()
                                                   , percentage :: Maybe () }

data WorkDoneProgressReport = WorkDoneProgressReport { kind :: ()
                                                     , cancellable :: Maybe ()
                                                     , message :: Maybe ()
                                                     , percentage :: Maybe () }

data WorkDoneProgressEnd = WorkDoneProgressEnd { kind :: ()
                                               , message :: Maybe () }

data SetTraceParams = SetTraceParams { value :: TraceValues }

data LogTraceParams = LogTraceParams { message :: (), verbose :: Maybe () }

data CancelParams = CancelParams { id :: () }

data ProgressParams = ProgressParams { token :: ProgressToken
                                     , value :: LSPAny }

data TextDocumentPositionParams = TextDocumentPositionParams { textDocument :: TextDocumentIdentifier
                                                             , position :: Position }

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneToken :: Maybe ProgressToken }

data LocationLink = LocationLink { originSelectionRange :: Maybe Range
                                 , targetUri :: ()
                                 , targetRange :: Range
                                 , targetSelectionRange :: Range }

data Range = Range { start :: Position, end :: Position }

data ImplementationOptions = ImplementationOptions {  }

data StaticRegistrationOptions = StaticRegistrationOptions { id :: Maybe () }

data TypeDefinitionOptions = TypeDefinitionOptions {  }

data WorkspaceFoldersChangeEvent = WorkspaceFoldersChangeEvent { added :: ()
                                                               , removed :: () }

data ConfigurationItem = ConfigurationItem { scopeUri :: Maybe ()
                                           , section :: Maybe () }

data TextDocumentIdentifier = TextDocumentIdentifier { uri :: () }

data Color = Color { red :: (), green :: (), blue :: (), alpha :: () }

data DocumentColorOptions = DocumentColorOptions {  }

data FoldingRangeOptions = FoldingRangeOptions {  }

data DeclarationOptions = DeclarationOptions {  }

data Position = Position { line :: (), character :: () }

data SelectionRangeOptions = SelectionRangeOptions {  }

data CallHierarchyOptions = CallHierarchyOptions {  }

data SemanticTokensOptions = SemanticTokensOptions { legend :: SemanticTokensLegend
                                                   , range :: Maybe ()
                                                   , full :: Maybe () }

data SemanticTokensEdit = SemanticTokensEdit { start :: ()
                                             , deleteCount :: ()
                                             , data :: Maybe () }

data LinkedEditingRangeOptions = LinkedEditingRangeOptions {  }

data FileCreate = FileCreate { uri :: () }

data TextDocumentEdit = TextDocumentEdit { textDocument :: OptionalVersionedTextDocumentIdentifier
                                         , edits :: () }

data CreateFile = CreateFile { kind :: ()
                             , uri :: ()
                             , options :: Maybe CreateFileOptions }

data RenameFile = RenameFile { kind :: ()
                             , oldUri :: ()
                             , newUri :: ()
                             , options :: Maybe RenameFileOptions }

data DeleteFile = DeleteFile { kind :: ()
                             , uri :: ()
                             , options :: Maybe DeleteFileOptions }

data ChangeAnnotation = ChangeAnnotation { label :: ()
                                         , needsConfirmation :: Maybe ()
                                         , description :: Maybe () }

data FileOperationFilter = FileOperationFilter { scheme :: Maybe ()
                                               , pattern :: FileOperationPattern }

data FileRename = FileRename { oldUri :: (), newUri :: () }

data FileDelete = FileDelete { uri :: () }

data MonikerOptions = MonikerOptions {  }

data TypeHierarchyOptions = TypeHierarchyOptions {  }

data InlineValueContext = InlineValueContext { frameId :: ()
                                             , stoppedLocation :: Range }

data InlineValueText = InlineValueText { range :: Range, text :: () }

data InlineValueVariableLookup = InlineValueVariableLookup { range :: Range
                                                           , variableName :: Maybe ()
                                                           , caseSensitiveLookup :: () }

data InlineValueEvaluatableExpression = InlineValueEvaluatableExpression { range :: Range
                                                                         , expression :: Maybe () }

data InlineValueOptions = InlineValueOptions {  }

data InlayHintLabelPart = InlayHintLabelPart { value :: ()
                                             , tooltip :: Maybe ()
                                             , location :: Maybe Location
                                             , command :: Maybe Command }

data MarkupContent = MarkupContent { kind :: MarkupKind, value :: () }

data InlayHintOptions = InlayHintOptions { resolveProvider :: Maybe () }

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedDocuments :: Maybe () }

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedDocuments :: Maybe () }

data FullDocumentDiagnosticReport = FullDocumentDiagnosticReport { kind :: ()
                                                                 , resultId :: Maybe ()
                                                                 , items :: () }

data UnchangedDocumentDiagnosticReport = UnchangedDocumentDiagnosticReport { kind :: ()
                                                                           , resultId :: () }

data DiagnosticOptions = DiagnosticOptions { identifier :: Maybe ()
                                           , interFileDependencies :: ()
                                           , workspaceDiagnostics :: () }

data PreviousResultId = PreviousResultId { uri :: (), value :: () }

data NotebookDocument = NotebookDocument { uri :: URI
                                         , notebookType :: ()
                                         , version :: ()
                                         , metadata :: Maybe LSPObject
                                         , cells :: () }

data TextDocumentItem = TextDocumentItem { uri :: ()
                                         , languageId :: ()
                                         , version :: ()
                                         , text :: () }

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { version :: ()
                                                                               , uri :: URI }

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { metadata :: Maybe LSPObject
                                                               , cells :: Maybe () }

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { uri :: URI }

data Registration = Registration { id :: ()
                                 , method :: ()
                                 , registerOptions :: Maybe LSPAny }

data Unregistration = Unregistration { id :: (), method :: () }

data _InitializeParams = _InitializeParams { processId :: ()
                                           , clientInfo :: Maybe ()
                                           , locale :: Maybe ()
                                           , rootPath :: Maybe ()
                                           , rootUri :: ()
                                           , capabilities :: ClientCapabilities
                                           , initializationOptions :: Maybe LSPAny
                                           , trace :: Maybe () }

data WorkspaceFoldersInitializeParams = WorkspaceFoldersInitializeParams { workspaceFolders :: Maybe () }

data ServerCapabilities = ServerCapabilities { positionEncoding :: Maybe PositionEncodingKind
                                             , textDocumentSync :: Maybe ()
                                             , notebookDocumentSync :: Maybe ()
                                             , completionProvider :: Maybe CompletionOptions
                                             , hoverProvider :: Maybe ()
                                             , signatureHelpProvider :: Maybe SignatureHelpOptions
                                             , declarationProvider :: Maybe ()
                                             , definitionProvider :: Maybe ()
                                             , typeDefinitionProvider :: Maybe ()
                                             , implementationProvider :: Maybe ()
                                             , referencesProvider :: Maybe ()
                                             , documentHighlightProvider :: Maybe ()
                                             , documentSymbolProvider :: Maybe ()
                                             , codeActionProvider :: Maybe ()
                                             , codeLensProvider :: Maybe CodeLensOptions
                                             , documentLinkProvider :: Maybe DocumentLinkOptions
                                             , colorProvider :: Maybe ()
                                             , workspaceSymbolProvider :: Maybe ()
                                             , documentFormattingProvider :: Maybe ()
                                             , documentRangeFormattingProvider :: Maybe ()
                                             , documentOnTypeFormattingProvider :: Maybe DocumentOnTypeFormattingOptions
                                             , renameProvider :: Maybe ()
                                             , foldingRangeProvider :: Maybe ()
                                             , selectionRangeProvider :: Maybe ()
                                             , executeCommandProvider :: Maybe ExecuteCommandOptions
                                             , callHierarchyProvider :: Maybe ()
                                             , linkedEditingRangeProvider :: Maybe ()
                                             , semanticTokensProvider :: Maybe ()
                                             , monikerProvider :: Maybe ()
                                             , typeHierarchyProvider :: Maybe ()
                                             , inlineValueProvider :: Maybe ()
                                             , inlayHintProvider :: Maybe ()
                                             , diagnosticProvider :: Maybe ()
                                             , workspace :: Maybe ()
                                             , experimental :: Maybe LSPAny }

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { version :: () }

data SaveOptions = SaveOptions { includeText :: Maybe () }

data FileEvent = FileEvent { uri :: (), type :: FileChangeType }

data FileSystemWatcher = FileSystemWatcher { globPattern :: GlobPattern
                                           , kind :: Maybe WatchKind }

data Diagnostic = Diagnostic { range :: Range
                             , severity :: Maybe DiagnosticSeverity
                             , code :: Maybe ()
                             , codeDescription :: Maybe CodeDescription
                             , source :: Maybe ()
                             , message :: ()
                             , tags :: Maybe ()
                             , relatedInformation :: Maybe ()
                             , data :: Maybe LSPAny }

data CompletionContext = CompletionContext { triggerKind :: CompletionTriggerKind
                                           , triggerCharacter :: Maybe () }

data CompletionItemLabelDetails = CompletionItemLabelDetails { detail :: Maybe ()
                                                             , description :: Maybe () }

data InsertReplaceEdit = InsertReplaceEdit { newText :: ()
                                           , insert :: Range
                                           , replace :: Range }

data CompletionOptions = CompletionOptions { triggerCharacters :: Maybe ()
                                           , allCommitCharacters :: Maybe ()
                                           , resolveProvider :: Maybe ()
                                           , completionItem :: Maybe () }

data HoverOptions = HoverOptions {  }

data SignatureHelpContext = SignatureHelpContext { triggerKind :: SignatureHelpTriggerKind
                                                 , triggerCharacter :: Maybe ()
                                                 , isRetrigger :: ()
                                                 , activeSignatureHelp :: Maybe SignatureHelp }

data SignatureInformation = SignatureInformation { label :: ()
                                                 , documentation :: Maybe ()
                                                 , parameters :: Maybe ()
                                                 , activeParameter :: Maybe () }

data SignatureHelpOptions = SignatureHelpOptions { triggerCharacters :: Maybe ()
                                                 , retriggerCharacters :: Maybe () }

data DefinitionOptions = DefinitionOptions {  }

data ReferenceContext = ReferenceContext { includeDeclaration :: () }

data ReferenceOptions = ReferenceOptions {  }

data DocumentHighlightOptions = DocumentHighlightOptions {  }

data BaseSymbolInformation = BaseSymbolInformation { name :: ()
                                                   , kind :: SymbolKind
                                                   , tags :: Maybe ()
                                                   , containerName :: Maybe () }

data DocumentSymbolOptions = DocumentSymbolOptions { label :: Maybe () }

data CodeActionContext = CodeActionContext { diagnostics :: ()
                                           , only :: Maybe ()
                                           , triggerKind :: Maybe CodeActionTriggerKind }

data CodeActionOptions = CodeActionOptions { codeActionKinds :: Maybe ()
                                           , resolveProvider :: Maybe () }

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { resolveProvider :: Maybe () }

data CodeLensOptions = CodeLensOptions { resolveProvider :: Maybe () }

data DocumentLinkOptions = DocumentLinkOptions { resolveProvider :: Maybe () }

data FormattingOptions = FormattingOptions { tabSize :: ()
                                           , insertSpaces :: ()
                                           , trimTrailingWhitespace :: Maybe ()
                                           , insertFinalNewline :: Maybe ()
                                           , trimFinalNewlines :: Maybe () }

data DocumentFormattingOptions = DocumentFormattingOptions {  }

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions {  }

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { firstTriggerCharacter :: ()
                                                                       , moreTriggerCharacter :: Maybe () }

data RenameOptions = RenameOptions { prepareProvider :: Maybe () }

data ExecuteCommandOptions = ExecuteCommandOptions { commands :: () }

data SemanticTokensLegend = SemanticTokensLegend { tokenTypes :: ()
                                                 , tokenModifiers :: () }

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { version :: () }

data AnnotatedTextEdit = AnnotatedTextEdit { annotationId :: ChangeAnnotationIdentifier }

data ResourceOperation = ResourceOperation { kind :: ()
                                           , annotationId :: Maybe ChangeAnnotationIdentifier }

data CreateFileOptions = CreateFileOptions { overwrite :: Maybe ()
                                           , ignoreIfExists :: Maybe () }

data RenameFileOptions = RenameFileOptions { overwrite :: Maybe ()
                                           , ignoreIfExists :: Maybe () }

data DeleteFileOptions = DeleteFileOptions { recursive :: Maybe ()
                                           , ignoreIfNotExists :: Maybe () }

data FileOperationPattern = FileOperationPattern { glob :: ()
                                                 , matches :: Maybe FileOperationPatternKind
                                                 , options :: Maybe FileOperationPatternOptions }

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { uri :: ()
                                                                                   , version :: () }

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { uri :: ()
                                                                                             , version :: () }

data LSPObject = LSPObject {  }

data NotebookCell = NotebookCell { kind :: NotebookCellKind
                                 , document :: ()
                                 , metadata :: Maybe LSPObject
                                 , executionSummary :: Maybe ExecutionSummary }

data NotebookCellArrayChange = NotebookCellArrayChange { start :: ()
                                                       , deleteCount :: ()
                                                       , cells :: Maybe () }

data ClientCapabilities = ClientCapabilities { workspace :: Maybe WorkspaceClientCapabilities
                                             , textDocument :: Maybe TextDocumentClientCapabilities
                                             , notebookDocument :: Maybe NotebookDocumentClientCapabilities
                                             , window :: Maybe WindowClientCapabilities
                                             , general :: Maybe GeneralClientCapabilities
                                             , experimental :: Maybe LSPAny }

data TextDocumentSyncOptions = TextDocumentSyncOptions { openClose :: Maybe ()
                                                       , change :: Maybe TextDocumentSyncKind
                                                       , willSave :: Maybe ()
                                                       , willSaveWaitUntil :: Maybe ()
                                                       , save :: Maybe () }

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookSelector :: ()
                                                               , save :: Maybe () }

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }

data WorkspaceFoldersServerCapabilities = WorkspaceFoldersServerCapabilities { supported :: Maybe ()
                                                                             , changeNotifications :: Maybe () }

data FileOperationOptions = FileOperationOptions { didCreate :: Maybe FileOperationRegistrationOptions
                                                 , willCreate :: Maybe FileOperationRegistrationOptions
                                                 , didRename :: Maybe FileOperationRegistrationOptions
                                                 , willRename :: Maybe FileOperationRegistrationOptions
                                                 , didDelete :: Maybe FileOperationRegistrationOptions
                                                 , willDelete :: Maybe FileOperationRegistrationOptions }

data CodeDescription = CodeDescription { href :: URI }

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { location :: Location
                                                                 , message :: () }

data ParameterInformation = ParameterInformation { label :: ()
                                                 , documentation :: Maybe () }

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebook :: ()
                                                                     , language :: Maybe () }

data FileOperationPatternOptions = FileOperationPatternOptions { ignoreCase :: Maybe () }

data ExecutionSummary = ExecutionSummary { executionOrder :: ()
                                         , success :: Maybe () }

data WorkspaceClientCapabilities = WorkspaceClientCapabilities { applyEdit :: Maybe ()
                                                               , workspaceEdit :: Maybe WorkspaceEditClientCapabilities
                                                               , didChangeConfiguration :: Maybe DidChangeConfigurationClientCapabilities
                                                               , didChangeWatchedFiles :: Maybe DidChangeWatchedFilesClientCapabilities
                                                               , symbol :: Maybe WorkspaceSymbolClientCapabilities
                                                               , executeCommand :: Maybe ExecuteCommandClientCapabilities
                                                               , workspaceFolders :: Maybe ()
                                                               , configuration :: Maybe ()
                                                               , semanticTokens :: Maybe SemanticTokensWorkspaceClientCapabilities
                                                               , codeLens :: Maybe CodeLensWorkspaceClientCapabilities
                                                               , fileOperations :: Maybe FileOperationClientCapabilities
                                                               , inlineValue :: Maybe InlineValueWorkspaceClientCapabilities
                                                               , inlayHint :: Maybe InlayHintWorkspaceClientCapabilities
                                                               , diagnostics :: Maybe DiagnosticWorkspaceClientCapabilities }

data TextDocumentClientCapabilities = TextDocumentClientCapabilities { synchronization :: Maybe TextDocumentSyncClientCapabilities
                                                                     , completion :: Maybe CompletionClientCapabilities
                                                                     , hover :: Maybe HoverClientCapabilities
                                                                     , signatureHelp :: Maybe SignatureHelpClientCapabilities
                                                                     , declaration :: Maybe DeclarationClientCapabilities
                                                                     , definition :: Maybe DefinitionClientCapabilities
                                                                     , typeDefinition :: Maybe TypeDefinitionClientCapabilities
                                                                     , implementation :: Maybe ImplementationClientCapabilities
                                                                     , references :: Maybe ReferenceClientCapabilities
                                                                     , documentHighlight :: Maybe DocumentHighlightClientCapabilities
                                                                     , documentSymbol :: Maybe DocumentSymbolClientCapabilities
                                                                     , codeAction :: Maybe CodeActionClientCapabilities
                                                                     , codeLens :: Maybe CodeLensClientCapabilities
                                                                     , documentLink :: Maybe DocumentLinkClientCapabilities
                                                                     , colorProvider :: Maybe DocumentColorClientCapabilities
                                                                     , formatting :: Maybe DocumentFormattingClientCapabilities
                                                                     , rangeFormatting :: Maybe DocumentRangeFormattingClientCapabilities
                                                                     , onTypeFormatting :: Maybe DocumentOnTypeFormattingClientCapabilities
                                                                     , rename :: Maybe RenameClientCapabilities
                                                                     , foldingRange :: Maybe FoldingRangeClientCapabilities
                                                                     , selectionRange :: Maybe SelectionRangeClientCapabilities
                                                                     , publishDiagnostics :: Maybe PublishDiagnosticsClientCapabilities
                                                                     , callHierarchy :: Maybe CallHierarchyClientCapabilities
                                                                     , semanticTokens :: Maybe SemanticTokensClientCapabilities
                                                                     , linkedEditingRange :: Maybe LinkedEditingRangeClientCapabilities
                                                                     , moniker :: Maybe MonikerClientCapabilities
                                                                     , typeHierarchy :: Maybe TypeHierarchyClientCapabilities
                                                                     , inlineValue :: Maybe InlineValueClientCapabilities
                                                                     , inlayHint :: Maybe InlayHintClientCapabilities
                                                                     , diagnostic :: Maybe DiagnosticClientCapabilities }

data NotebookDocumentClientCapabilities = NotebookDocumentClientCapabilities { synchronization :: NotebookDocumentSyncClientCapabilities }

data WindowClientCapabilities = WindowClientCapabilities { workDoneProgress :: Maybe ()
                                                         , showMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , showDocument :: Maybe ShowDocumentClientCapabilities }

data GeneralClientCapabilities = GeneralClientCapabilities { staleRequestSupport :: Maybe ()
                                                           , regularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , markdown :: Maybe MarkdownClientCapabilities
                                                           , positionEncodings :: Maybe () }

data RelativePattern = RelativePattern { baseUri :: (), pattern :: Pattern }

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { documentChanges :: Maybe ()
                                                                       , resourceOperations :: Maybe ()
                                                                       , failureHandling :: Maybe FailureHandlingKind
                                                                       , normalizesLineEndings :: Maybe ()
                                                                       , changeAnnotationSupport :: Maybe () }

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { dynamicRegistration :: Maybe () }

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { dynamicRegistration :: Maybe ()
                                                                                       , relativePatternSupport :: Maybe () }

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { dynamicRegistration :: Maybe ()
                                                                           , symbolKind :: Maybe ()
                                                                           , tagSupport :: Maybe ()
                                                                           , resolveSupport :: Maybe () }

data ExecuteCommandClientCapabilities = ExecuteCommandClientCapabilities { dynamicRegistration :: Maybe () }

data SemanticTokensWorkspaceClientCapabilities = SemanticTokensWorkspaceClientCapabilities { refreshSupport :: Maybe () }

data CodeLensWorkspaceClientCapabilities = CodeLensWorkspaceClientCapabilities { refreshSupport :: Maybe () }

data FileOperationClientCapabilities = FileOperationClientCapabilities { dynamicRegistration :: Maybe ()
                                                                       , didCreate :: Maybe ()
                                                                       , willCreate :: Maybe ()
                                                                       , didRename :: Maybe ()
                                                                       , willRename :: Maybe ()
                                                                       , didDelete :: Maybe ()
                                                                       , willDelete :: Maybe () }

data InlineValueWorkspaceClientCapabilities = InlineValueWorkspaceClientCapabilities { refreshSupport :: Maybe () }

data InlayHintWorkspaceClientCapabilities = InlayHintWorkspaceClientCapabilities { refreshSupport :: Maybe () }

data DiagnosticWorkspaceClientCapabilities = DiagnosticWorkspaceClientCapabilities { refreshSupport :: Maybe () }

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { dynamicRegistration :: Maybe ()
                                                                             , willSave :: Maybe ()
                                                                             , willSaveWaitUntil :: Maybe ()
                                                                             , didSave :: Maybe () }

data CompletionClientCapabilities = CompletionClientCapabilities { dynamicRegistration :: Maybe ()
                                                                 , completionItem :: Maybe ()
                                                                 , completionItemKind :: Maybe ()
                                                                 , insertTextMode :: Maybe InsertTextMode
                                                                 , contextSupport :: Maybe ()
                                                                 , completionList :: Maybe () }

data HoverClientCapabilities = HoverClientCapabilities { dynamicRegistration :: Maybe ()
                                                       , contentFormat :: Maybe () }

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { dynamicRegistration :: Maybe ()
                                                                       , signatureInformation :: Maybe ()
                                                                       , contextSupport :: Maybe () }

data DeclarationClientCapabilities = DeclarationClientCapabilities { dynamicRegistration :: Maybe ()
                                                                   , linkSupport :: Maybe () }

data DefinitionClientCapabilities = DefinitionClientCapabilities { dynamicRegistration :: Maybe ()
                                                                 , linkSupport :: Maybe () }

data TypeDefinitionClientCapabilities = TypeDefinitionClientCapabilities { dynamicRegistration :: Maybe ()
                                                                         , linkSupport :: Maybe () }

data ImplementationClientCapabilities = ImplementationClientCapabilities { dynamicRegistration :: Maybe ()
                                                                         , linkSupport :: Maybe () }

data ReferenceClientCapabilities = ReferenceClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentHighlightClientCapabilities = DocumentHighlightClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentSymbolClientCapabilities = DocumentSymbolClientCapabilities { dynamicRegistration :: Maybe ()
                                                                         , symbolKind :: Maybe ()
                                                                         , hierarchicalDocumentSymbolSupport :: Maybe ()
                                                                         , tagSupport :: Maybe ()
                                                                         , labelSupport :: Maybe () }

data CodeActionClientCapabilities = CodeActionClientCapabilities { dynamicRegistration :: Maybe ()
                                                                 , codeActionLiteralSupport :: Maybe ()
                                                                 , isPreferredSupport :: Maybe ()
                                                                 , disabledSupport :: Maybe ()
                                                                 , dataSupport :: Maybe ()
                                                                 , resolveSupport :: Maybe ()
                                                                 , honorsChangeAnnotations :: Maybe () }

data CodeLensClientCapabilities = CodeLensClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { dynamicRegistration :: Maybe ()
                                                                     , tooltipSupport :: Maybe () }

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { dynamicRegistration :: Maybe () }

data DocumentOnTypeFormattingClientCapabilities = DocumentOnTypeFormattingClientCapabilities { dynamicRegistration :: Maybe () }

data RenameClientCapabilities = RenameClientCapabilities { dynamicRegistration :: Maybe ()
                                                         , prepareSupport :: Maybe ()
                                                         , prepareSupportDefaultBehavior :: Maybe PrepareSupportDefaultBehavior
                                                         , honorsChangeAnnotations :: Maybe () }

data FoldingRangeClientCapabilities = FoldingRangeClientCapabilities { dynamicRegistration :: Maybe ()
                                                                     , rangeLimit :: Maybe ()
                                                                     , lineFoldingOnly :: Maybe ()
                                                                     , foldingRangeKind :: Maybe ()
                                                                     , foldingRange :: Maybe () }

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { dynamicRegistration :: Maybe () }

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { relatedInformation :: Maybe ()
                                                                                 , tagSupport :: Maybe ()
                                                                                 , versionSupport :: Maybe ()
                                                                                 , codeDescriptionSupport :: Maybe ()
                                                                                 , dataSupport :: Maybe () }

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { dynamicRegistration :: Maybe () }

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { dynamicRegistration :: Maybe ()
                                                                         , requests :: ()
                                                                         , tokenTypes :: ()
                                                                         , tokenModifiers :: ()
                                                                         , formats :: ()
                                                                         , overlappingTokenSupport :: Maybe ()
                                                                         , multilineTokenSupport :: Maybe ()
                                                                         , serverCancelSupport :: Maybe ()
                                                                         , augmentsSyntaxTokens :: Maybe () }

data LinkedEditingRangeClientCapabilities = LinkedEditingRangeClientCapabilities { dynamicRegistration :: Maybe () }

data MonikerClientCapabilities = MonikerClientCapabilities { dynamicRegistration :: Maybe () }

data TypeHierarchyClientCapabilities = TypeHierarchyClientCapabilities { dynamicRegistration :: Maybe () }

data InlineValueClientCapabilities = InlineValueClientCapabilities { dynamicRegistration :: Maybe () }

data InlayHintClientCapabilities = InlayHintClientCapabilities { dynamicRegistration :: Maybe ()
                                                               , resolveSupport :: Maybe () }

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { dynamicRegistration :: Maybe ()
                                                                 , relatedDocumentSupport :: Maybe () }

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { dynamicRegistration :: Maybe ()
                                                                                     , executionSummarySupport :: Maybe () }

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { messageActionItem :: Maybe () }

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { support :: () }

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { engine :: ()
                                                                                 , version :: Maybe () }

data MarkdownClientCapabilities = MarkdownClientCapabilities { parser :: ()
                                                             , version :: Maybe ()
                                                             , allowedTags :: Maybe () }
