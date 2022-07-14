-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol.Types where

import qualified Data.Map
import qualified LSP.Protocol.Support

data ImplementationParams = ImplementationParams {  }

data Location = Location { uri :: LSP.Protocol.Support.DocumentUri
                         , range :: Range }

data ImplementationRegistrationOptions = ImplementationRegistrationOptions {  }

data TypeDefinitionParams = TypeDefinitionParams {  }

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions {  }

data WorkspaceFolder = WorkspaceFolder { uri :: URI, name :: String }

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { event :: WorkspaceFoldersChangeEvent }

data ConfigurationParams = ConfigurationParams { items :: [ConfigurationItem] }

data PartialResultParams = PartialResultParams { partialResultToken :: Maybe ProgressToken }

data DocumentColorParams = DocumentColorParams { textDocument :: TextDocumentIdentifier }

data ColorInformation = ColorInformation { range :: Range, color :: Color }

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions {  }

data ColorPresentationParams = ColorPresentationParams { textDocument :: TextDocumentIdentifier
                                                       , color :: Color
                                                       , range :: Range }

data ColorPresentation = ColorPresentation { label :: String
                                           , textEdit :: Maybe TextEdit
                                           , additionalTextEdits :: Maybe [TextEdit] }

data WorkDoneProgressOptions = WorkDoneProgressOptions { workDoneProgress :: Maybe Bool }

data TextDocumentRegistrationOptions = TextDocumentRegistrationOptions { documentSelector :: Either DocumentSelector () }

data FoldingRangeParams = FoldingRangeParams { textDocument :: TextDocumentIdentifier }

data FoldingRange = FoldingRange { startLine :: Int
                                 , startCharacter :: Maybe Int
                                 , endLine :: Int
                                 , endCharacter :: Maybe Int
                                 , kind :: Maybe FoldingRangeKind
                                 , collapsedText :: Maybe String }

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions {  }

data DeclarationParams = DeclarationParams {  }

data DeclarationRegistrationOptions = DeclarationRegistrationOptions {  }

data SelectionRangeParams = SelectionRangeParams { textDocument :: TextDocumentIdentifier
                                                 , positions :: [Position] }

data SelectionRange = SelectionRange { range :: Range
                                     , parent :: Maybe SelectionRange }

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions {  }

data WorkDoneProgressCreateParams = WorkDoneProgressCreateParams { token :: ProgressToken }

data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams { token :: ProgressToken }

data CallHierarchyPrepareParams = CallHierarchyPrepareParams {  }

data CallHierarchyItem = CallHierarchyItem { name :: String
                                           , kind :: SymbolKind
                                           , tags :: Maybe [SymbolTag]
                                           , detail :: Maybe String
                                           , uri :: LSP.Protocol.Support.DocumentUri
                                           , range :: Range
                                           , selectionRange :: Range
                                           , data :: Maybe LSPAny }

data CallHierarchyRegistrationOptions = CallHierarchyRegistrationOptions {  }

data CallHierarchyIncomingCallsParams = CallHierarchyIncomingCallsParams { item :: CallHierarchyItem }

data CallHierarchyIncomingCall = CallHierarchyIncomingCall { from :: CallHierarchyItem
                                                           , fromRanges :: [Range] }

data CallHierarchyOutgoingCallsParams = CallHierarchyOutgoingCallsParams { item :: CallHierarchyItem }

data CallHierarchyOutgoingCall = CallHierarchyOutgoingCall { to :: CallHierarchyItem
                                                           , fromRanges :: [Range] }

data SemanticTokensParams = SemanticTokensParams { textDocument :: TextDocumentIdentifier }

data SemanticTokens = SemanticTokens { resultId :: Maybe String
                                     , data :: [Int] }

data SemanticTokensPartialResult = SemanticTokensPartialResult { data :: [Int] }

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions {  }

data SemanticTokensDeltaParams = SemanticTokensDeltaParams { textDocument :: TextDocumentIdentifier
                                                           , previousResultId :: String }

data SemanticTokensDelta = SemanticTokensDelta { resultId :: Maybe String
                                               , edits :: [SemanticTokensEdit] }

data SemanticTokensDeltaPartialResult = SemanticTokensDeltaPartialResult { edits :: [SemanticTokensEdit] }

data SemanticTokensRangeParams = SemanticTokensRangeParams { textDocument :: TextDocumentIdentifier
                                                           , range :: Range }

data ShowDocumentParams = ShowDocumentParams { uri :: URI
                                             , external :: Maybe Bool
                                             , takeFocus :: Maybe Bool
                                             , selection :: Maybe Range }

data ShowDocumentResult = ShowDocumentResult { success :: Bool }

data LinkedEditingRangeParams = LinkedEditingRangeParams {  }

data LinkedEditingRanges = LinkedEditingRanges { ranges :: [Range]
                                               , wordPattern :: Maybe String }

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions {  }

data CreateFilesParams = CreateFilesParams { files :: [FileCreate] }

data WorkspaceEdit = WorkspaceEdit { changes :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri [TextEdit])
                                   , documentChanges :: Maybe [Either (Either (Either TextDocumentEdit CreateFile) RenameFile) DeleteFile]
                                   , changeAnnotations :: Maybe (Data.Map.Map ChangeAnnotationIdentifier ChangeAnnotation) }

data FileOperationRegistrationOptions = FileOperationRegistrationOptions { filters :: [FileOperationFilter] }

data RenameFilesParams = RenameFilesParams { files :: [FileRename] }

data DeleteFilesParams = DeleteFilesParams { files :: [FileDelete] }

data MonikerParams = MonikerParams {  }

data Moniker = Moniker { scheme :: String
                       , identifier :: String
                       , unique :: UniquenessLevel
                       , kind :: Maybe MonikerKind }

data MonikerRegistrationOptions = MonikerRegistrationOptions {  }

data TypeHierarchyPrepareParams = TypeHierarchyPrepareParams {  }

data TypeHierarchyItem = TypeHierarchyItem { name :: String
                                           , kind :: SymbolKind
                                           , tags :: Maybe [SymbolTag]
                                           , detail :: Maybe String
                                           , uri :: LSP.Protocol.Support.DocumentUri
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
                           , label :: Either String [InlayHintLabelPart]
                           , kind :: Maybe InlayHintKind
                           , textEdits :: Maybe [TextEdit]
                           , tooltip :: Maybe (Either String MarkupContent)
                           , paddingLeft :: Maybe Bool
                           , paddingRight :: Maybe Bool
                           , data :: Maybe LSPAny }

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }

data DocumentDiagnosticParams = DocumentDiagnosticParams { textDocument :: TextDocumentIdentifier
                                                         , identifier :: Maybe String
                                                         , previousResultId :: Maybe String }

data DocumentDiagnosticReportPartialResult = DocumentDiagnosticReportPartialResult { relatedDocuments :: Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport) }

data DiagnosticServerCancellationData = DiagnosticServerCancellationData { retriggerRequest :: Bool }

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions {  }

data WorkspaceDiagnosticParams = WorkspaceDiagnosticParams { identifier :: Maybe String
                                                           , previousResultIds :: [PreviousResultId] }

data WorkspaceDiagnosticReport = WorkspaceDiagnosticReport { items :: [WorkspaceDocumentDiagnosticReport] }

data WorkspaceDiagnosticReportPartialResult = WorkspaceDiagnosticReportPartialResult { items :: [WorkspaceDocumentDiagnosticReport] }

data DidOpenNotebookDocumentParams = DidOpenNotebookDocumentParams { notebookDocument :: NotebookDocument
                                                                   , cellTextDocuments :: [TextDocumentItem] }

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { notebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , change :: NotebookDocumentChangeEvent }

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { notebookDocument :: NotebookDocumentIdentifier }

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { notebookDocument :: NotebookDocumentIdentifier
                                                                     , cellTextDocuments :: [TextDocumentIdentifier] }

data RegistrationParams = RegistrationParams { registrations :: [Registration] }

data UnregistrationParams = UnregistrationParams { unregisterations :: [Unregistration] }

data InitializeParams = InitializeParams {  }

data InitializeResult = InitializeResult { capabilities :: ServerCapabilities
                                         , serverInfo :: Maybe () }

data InitializeError = InitializeError { retry :: Bool }

data InitializedParams = InitializedParams {  }

data DidChangeConfigurationParams = DidChangeConfigurationParams { settings :: LSPAny }

data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions { section :: Maybe (Either String [String]) }

data ShowMessageParams = ShowMessageParams { type :: MessageType
                                           , message :: String }

data ShowMessageRequestParams = ShowMessageRequestParams { type :: MessageType
                                                         , message :: String
                                                         , actions :: Maybe [MessageActionItem] }

data MessageActionItem = MessageActionItem { title :: String }

data LogMessageParams = LogMessageParams { type :: MessageType
                                         , message :: String }

data DidOpenTextDocumentParams = DidOpenTextDocumentParams { textDocument :: TextDocumentItem }

data DidChangeTextDocumentParams = DidChangeTextDocumentParams { textDocument :: VersionedTextDocumentIdentifier
                                                               , contentChanges :: [TextDocumentContentChangeEvent] }

data TextDocumentChangeRegistrationOptions = TextDocumentChangeRegistrationOptions { syncKind :: TextDocumentSyncKind }

data DidCloseTextDocumentParams = DidCloseTextDocumentParams { textDocument :: TextDocumentIdentifier }

data DidSaveTextDocumentParams = DidSaveTextDocumentParams { textDocument :: TextDocumentIdentifier
                                                           , text :: Maybe String }

data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions {  }

data WillSaveTextDocumentParams = WillSaveTextDocumentParams { textDocument :: TextDocumentIdentifier
                                                             , reason :: TextDocumentSaveReason }

data TextEdit = TextEdit { range :: Range, newText :: String }

data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams { changes :: [FileEvent] }

data DidChangeWatchedFilesRegistrationOptions = DidChangeWatchedFilesRegistrationOptions { watchers :: [FileSystemWatcher] }

data PublishDiagnosticsParams = PublishDiagnosticsParams { uri :: LSP.Protocol.Support.DocumentUri
                                                         , version :: Maybe Int
                                                         , diagnostics :: [Diagnostic] }

data CompletionParams = CompletionParams { context :: Maybe CompletionContext }

data CompletionItem = CompletionItem { label :: String
                                     , labelDetails :: Maybe CompletionItemLabelDetails
                                     , kind :: Maybe CompletionItemKind
                                     , tags :: Maybe [CompletionItemTag]
                                     , detail :: Maybe String
                                     , documentation :: Maybe (Either String MarkupContent)
                                     , deprecated :: Maybe Bool
                                     , preselect :: Maybe Bool
                                     , sortText :: Maybe String
                                     , filterText :: Maybe String
                                     , insertText :: Maybe String
                                     , insertTextFormat :: Maybe InsertTextFormat
                                     , insertTextMode :: Maybe InsertTextMode
                                     , textEdit :: Maybe (Either TextEdit InsertReplaceEdit)
                                     , textEditText :: Maybe String
                                     , additionalTextEdits :: Maybe [TextEdit]
                                     , commitCharacters :: Maybe [String]
                                     , command :: Maybe Command
                                     , data :: Maybe LSPAny }

data CompletionList = CompletionList { isIncomplete :: Bool
                                     , itemDefaults :: Maybe ()
                                     , items :: [CompletionItem] }

data CompletionRegistrationOptions = CompletionRegistrationOptions {  }

data HoverParams = HoverParams {  }

data Hover = Hover { contents :: Either (Either MarkupContent MarkedString) [MarkedString]
                   , range :: Maybe Range }

data HoverRegistrationOptions = HoverRegistrationOptions {  }

data SignatureHelpParams = SignatureHelpParams { context :: Maybe SignatureHelpContext }

data SignatureHelp = SignatureHelp { signatures :: [SignatureInformation]
                                   , activeSignature :: Maybe Int
                                   , activeParameter :: Maybe Int }

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

data SymbolInformation = SymbolInformation { deprecated :: Maybe Bool
                                           , location :: Location }

data DocumentSymbol = DocumentSymbol { name :: String
                                     , detail :: Maybe String
                                     , kind :: SymbolKind
                                     , tags :: Maybe [SymbolTag]
                                     , deprecated :: Maybe Bool
                                     , range :: Range
                                     , selectionRange :: Range
                                     , children :: Maybe [DocumentSymbol] }

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions {  }

data CodeActionParams = CodeActionParams { textDocument :: TextDocumentIdentifier
                                         , range :: Range
                                         , context :: CodeActionContext }

data Command = Command { title :: String
                       , command :: String
                       , arguments :: Maybe [LSPAny] }

data CodeAction = CodeAction { title :: String
                             , kind :: Maybe CodeActionKind
                             , diagnostics :: Maybe [Diagnostic]
                             , isPreferred :: Maybe Bool
                             , disabled :: Maybe ()
                             , edit :: Maybe WorkspaceEdit
                             , command :: Maybe Command
                             , data :: Maybe LSPAny }

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }

data WorkspaceSymbolParams = WorkspaceSymbolParams { query :: String }

data WorkspaceSymbol = WorkspaceSymbol { location :: Either Location ()
                                       , data :: Maybe LSPAny }

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions {  }

data CodeLensParams = CodeLensParams { textDocument :: TextDocumentIdentifier }

data CodeLens = CodeLens { range :: Range
                         , command :: Maybe Command
                         , data :: Maybe LSPAny }

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }

data DocumentLinkParams = DocumentLinkParams { textDocument :: TextDocumentIdentifier }

data DocumentLink = DocumentLink { range :: Range
                                 , target :: Maybe String
                                 , tooltip :: Maybe String
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
                                                                     , ch :: String
                                                                     , options :: FormattingOptions }

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions {  }

data RenameParams = RenameParams { textDocument :: TextDocumentIdentifier
                                 , position :: Position
                                 , newName :: String }

data RenameRegistrationOptions = RenameRegistrationOptions {  }

data PrepareRenameParams = PrepareRenameParams {  }

data ExecuteCommandParams = ExecuteCommandParams { command :: String
                                                 , arguments :: Maybe [LSPAny] }

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions {  }

data ApplyWorkspaceEditParams = ApplyWorkspaceEditParams { label :: Maybe String
                                                         , edit :: WorkspaceEdit }

data ApplyWorkspaceEditResult = ApplyWorkspaceEditResult { applied :: Bool
                                                         , failureReason :: Maybe String
                                                         , failedChange :: Maybe Int }

data WorkDoneProgressBegin = WorkDoneProgressBegin { kind :: String
                                                   , title :: String
                                                   , cancellable :: Maybe Bool
                                                   , message :: Maybe String
                                                   , percentage :: Maybe Int }

data WorkDoneProgressReport = WorkDoneProgressReport { kind :: String
                                                     , cancellable :: Maybe Bool
                                                     , message :: Maybe String
                                                     , percentage :: Maybe Int }

data WorkDoneProgressEnd = WorkDoneProgressEnd { kind :: String
                                               , message :: Maybe String }

data SetTraceParams = SetTraceParams { value :: TraceValues }

data LogTraceParams = LogTraceParams { message :: String
                                     , verbose :: Maybe String }

data CancelParams = CancelParams { id :: Either Int String }

data ProgressParams = ProgressParams { token :: ProgressToken
                                     , value :: LSPAny }

data TextDocumentPositionParams = TextDocumentPositionParams { textDocument :: TextDocumentIdentifier
                                                             , position :: Position }

data WorkDoneProgressParams = WorkDoneProgressParams { workDoneToken :: Maybe ProgressToken }

data LocationLink = LocationLink { originSelectionRange :: Maybe Range
                                 , targetUri :: LSP.Protocol.Support.DocumentUri
                                 , targetRange :: Range
                                 , targetSelectionRange :: Range }

data Range = Range { start :: Position, end :: Position }

data ImplementationOptions = ImplementationOptions {  }

data StaticRegistrationOptions = StaticRegistrationOptions { id :: Maybe String }

data TypeDefinitionOptions = TypeDefinitionOptions {  }

data WorkspaceFoldersChangeEvent = WorkspaceFoldersChangeEvent { added :: [WorkspaceFolder]
                                                               , removed :: [WorkspaceFolder] }

data ConfigurationItem = ConfigurationItem { scopeUri :: Maybe String
                                           , section :: Maybe String }

data TextDocumentIdentifier = TextDocumentIdentifier { uri :: LSP.Protocol.Support.DocumentUri }

data Color = Color { red :: Float
                   , green :: Float
                   , blue :: Float
                   , alpha :: Float }

data DocumentColorOptions = DocumentColorOptions {  }

data FoldingRangeOptions = FoldingRangeOptions {  }

data DeclarationOptions = DeclarationOptions {  }

data Position = Position { line :: Int, character :: Int }

data SelectionRangeOptions = SelectionRangeOptions {  }

data CallHierarchyOptions = CallHierarchyOptions {  }

data SemanticTokensOptions = SemanticTokensOptions { legend :: SemanticTokensLegend
                                                   , range :: Maybe (Either Bool ())
                                                   , full :: Maybe (Either Bool ()) }

data SemanticTokensEdit = SemanticTokensEdit { start :: Int
                                             , deleteCount :: Int
                                             , data :: Maybe [Int] }

data LinkedEditingRangeOptions = LinkedEditingRangeOptions {  }

data FileCreate = FileCreate { uri :: String }

data TextDocumentEdit = TextDocumentEdit { textDocument :: OptionalVersionedTextDocumentIdentifier
                                         , edits :: [Either TextEdit AnnotatedTextEdit] }

data CreateFile = CreateFile { kind :: String
                             , uri :: LSP.Protocol.Support.DocumentUri
                             , options :: Maybe CreateFileOptions }

data RenameFile = RenameFile { kind :: String
                             , oldUri :: LSP.Protocol.Support.DocumentUri
                             , newUri :: LSP.Protocol.Support.DocumentUri
                             , options :: Maybe RenameFileOptions }

data DeleteFile = DeleteFile { kind :: String
                             , uri :: LSP.Protocol.Support.DocumentUri
                             , options :: Maybe DeleteFileOptions }

data ChangeAnnotation = ChangeAnnotation { label :: String
                                         , needsConfirmation :: Maybe Bool
                                         , description :: Maybe String }

data FileOperationFilter = FileOperationFilter { scheme :: Maybe String
                                               , pattern :: FileOperationPattern }

data FileRename = FileRename { oldUri :: String, newUri :: String }

data FileDelete = FileDelete { uri :: String }

data MonikerOptions = MonikerOptions {  }

data TypeHierarchyOptions = TypeHierarchyOptions {  }

data InlineValueContext = InlineValueContext { frameId :: Int
                                             , stoppedLocation :: Range }

data InlineValueText = InlineValueText { range :: Range, text :: String }

data InlineValueVariableLookup = InlineValueVariableLookup { range :: Range
                                                           , variableName :: Maybe String
                                                           , caseSensitiveLookup :: Bool }

data InlineValueEvaluatableExpression = InlineValueEvaluatableExpression { range :: Range
                                                                         , expression :: Maybe String }

data InlineValueOptions = InlineValueOptions {  }

data InlayHintLabelPart = InlayHintLabelPart { value :: String
                                             , tooltip :: Maybe (Either String MarkupContent)
                                             , location :: Maybe Location
                                             , command :: Maybe Command }

data MarkupContent = MarkupContent { kind :: MarkupKind, value :: String }

data InlayHintOptions = InlayHintOptions { resolveProvider :: Maybe Bool }

data RelatedFullDocumentDiagnosticReport = RelatedFullDocumentDiagnosticReport { relatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }

data RelatedUnchangedDocumentDiagnosticReport = RelatedUnchangedDocumentDiagnosticReport { relatedDocuments :: Maybe (Data.Map.Map LSP.Protocol.Support.DocumentUri (Either FullDocumentDiagnosticReport UnchangedDocumentDiagnosticReport)) }

data FullDocumentDiagnosticReport = FullDocumentDiagnosticReport { kind :: String
                                                                 , resultId :: Maybe String
                                                                 , items :: [Diagnostic] }

data UnchangedDocumentDiagnosticReport = UnchangedDocumentDiagnosticReport { kind :: String
                                                                           , resultId :: String }

data DiagnosticOptions = DiagnosticOptions { identifier :: Maybe String
                                           , interFileDependencies :: Bool
                                           , workspaceDiagnostics :: Bool }

data PreviousResultId = PreviousResultId { uri :: LSP.Protocol.Support.DocumentUri
                                         , value :: String }

data NotebookDocument = NotebookDocument { uri :: URI
                                         , notebookType :: String
                                         , version :: Int
                                         , metadata :: Maybe LSPObject
                                         , cells :: [NotebookCell] }

data TextDocumentItem = TextDocumentItem { uri :: LSP.Protocol.Support.DocumentUri
                                         , languageId :: String
                                         , version :: Int
                                         , text :: String }

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { version :: Int
                                                                               , uri :: URI }

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { metadata :: Maybe LSPObject
                                                               , cells :: Maybe () }

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { uri :: URI }

data Registration = Registration { id :: String
                                 , method :: String
                                 , registerOptions :: Maybe LSPAny }

data Unregistration = Unregistration { id :: String, method :: String }

data _InitializeParams = _InitializeParams { processId :: Either Int ()
                                           , clientInfo :: Maybe ()
                                           , locale :: Maybe String
                                           , rootPath :: Maybe (Either String ())
                                           , rootUri :: Either LSP.Protocol.Support.DocumentUri ()
                                           , capabilities :: ClientCapabilities
                                           , initializationOptions :: Maybe LSPAny
                                           , trace :: Maybe (Either (Either (Either String String) String) String) }

data WorkspaceFoldersInitializeParams = WorkspaceFoldersInitializeParams { workspaceFolders :: Maybe (Either [WorkspaceFolder] ()) }

data ServerCapabilities = ServerCapabilities { positionEncoding :: Maybe PositionEncodingKind
                                             , textDocumentSync :: Maybe (Either TextDocumentSyncOptions TextDocumentSyncKind)
                                             , notebookDocumentSync :: Maybe (Either NotebookDocumentSyncOptions NotebookDocumentSyncRegistrationOptions)
                                             , completionProvider :: Maybe CompletionOptions
                                             , hoverProvider :: Maybe (Either Bool HoverOptions)
                                             , signatureHelpProvider :: Maybe SignatureHelpOptions
                                             , declarationProvider :: Maybe (Either (Either Bool DeclarationOptions) DeclarationRegistrationOptions)
                                             , definitionProvider :: Maybe (Either Bool DefinitionOptions)
                                             , typeDefinitionProvider :: Maybe (Either (Either Bool TypeDefinitionOptions) TypeDefinitionRegistrationOptions)
                                             , implementationProvider :: Maybe (Either (Either Bool ImplementationOptions) ImplementationRegistrationOptions)
                                             , referencesProvider :: Maybe (Either Bool ReferenceOptions)
                                             , documentHighlightProvider :: Maybe (Either Bool DocumentHighlightOptions)
                                             , documentSymbolProvider :: Maybe (Either Bool DocumentSymbolOptions)
                                             , codeActionProvider :: Maybe (Either Bool CodeActionOptions)
                                             , codeLensProvider :: Maybe CodeLensOptions
                                             , documentLinkProvider :: Maybe DocumentLinkOptions
                                             , colorProvider :: Maybe (Either (Either Bool DocumentColorOptions) DocumentColorRegistrationOptions)
                                             , workspaceSymbolProvider :: Maybe (Either Bool WorkspaceSymbolOptions)
                                             , documentFormattingProvider :: Maybe (Either Bool DocumentFormattingOptions)
                                             , documentRangeFormattingProvider :: Maybe (Either Bool DocumentRangeFormattingOptions)
                                             , documentOnTypeFormattingProvider :: Maybe DocumentOnTypeFormattingOptions
                                             , renameProvider :: Maybe (Either Bool RenameOptions)
                                             , foldingRangeProvider :: Maybe (Either (Either Bool FoldingRangeOptions) FoldingRangeRegistrationOptions)
                                             , selectionRangeProvider :: Maybe (Either (Either Bool SelectionRangeOptions) SelectionRangeRegistrationOptions)
                                             , executeCommandProvider :: Maybe ExecuteCommandOptions
                                             , callHierarchyProvider :: Maybe (Either (Either Bool CallHierarchyOptions) CallHierarchyRegistrationOptions)
                                             , linkedEditingRangeProvider :: Maybe (Either (Either Bool LinkedEditingRangeOptions) LinkedEditingRangeRegistrationOptions)
                                             , semanticTokensProvider :: Maybe (Either SemanticTokensOptions SemanticTokensRegistrationOptions)
                                             , monikerProvider :: Maybe (Either (Either Bool MonikerOptions) MonikerRegistrationOptions)
                                             , typeHierarchyProvider :: Maybe (Either (Either Bool TypeHierarchyOptions) TypeHierarchyRegistrationOptions)
                                             , inlineValueProvider :: Maybe (Either (Either Bool InlineValueOptions) InlineValueRegistrationOptions)
                                             , inlayHintProvider :: Maybe (Either (Either Bool InlayHintOptions) InlayHintRegistrationOptions)
                                             , diagnosticProvider :: Maybe (Either DiagnosticOptions DiagnosticRegistrationOptions)
                                             , workspace :: Maybe ()
                                             , experimental :: Maybe LSPAny }

data VersionedTextDocumentIdentifier = VersionedTextDocumentIdentifier { version :: Int }

data SaveOptions = SaveOptions { includeText :: Maybe Bool }

data FileEvent = FileEvent { uri :: LSP.Protocol.Support.DocumentUri
                           , type :: FileChangeType }

data FileSystemWatcher = FileSystemWatcher { globPattern :: GlobPattern
                                           , kind :: Maybe WatchKind }

data Diagnostic = Diagnostic { range :: Range
                             , severity :: Maybe DiagnosticSeverity
                             , code :: Maybe (Either Int String)
                             , codeDescription :: Maybe CodeDescription
                             , source :: Maybe String
                             , message :: String
                             , tags :: Maybe [DiagnosticTag]
                             , relatedInformation :: Maybe [DiagnosticRelatedInformation]
                             , data :: Maybe LSPAny }

data CompletionContext = CompletionContext { triggerKind :: CompletionTriggerKind
                                           , triggerCharacter :: Maybe String }

data CompletionItemLabelDetails = CompletionItemLabelDetails { detail :: Maybe String
                                                             , description :: Maybe String }

data InsertReplaceEdit = InsertReplaceEdit { newText :: String
                                           , insert :: Range
                                           , replace :: Range }

data CompletionOptions = CompletionOptions { triggerCharacters :: Maybe [String]
                                           , allCommitCharacters :: Maybe [String]
                                           , resolveProvider :: Maybe Bool
                                           , completionItem :: Maybe () }

data HoverOptions = HoverOptions {  }

data SignatureHelpContext = SignatureHelpContext { triggerKind :: SignatureHelpTriggerKind
                                                 , triggerCharacter :: Maybe String
                                                 , isRetrigger :: Bool
                                                 , activeSignatureHelp :: Maybe SignatureHelp }

data SignatureInformation = SignatureInformation { label :: String
                                                 , documentation :: Maybe (Either String MarkupContent)
                                                 , parameters :: Maybe [ParameterInformation]
                                                 , activeParameter :: Maybe Int }

data SignatureHelpOptions = SignatureHelpOptions { triggerCharacters :: Maybe [String]
                                                 , retriggerCharacters :: Maybe [String] }

data DefinitionOptions = DefinitionOptions {  }

data ReferenceContext = ReferenceContext { includeDeclaration :: Bool }

data ReferenceOptions = ReferenceOptions {  }

data DocumentHighlightOptions = DocumentHighlightOptions {  }

data BaseSymbolInformation = BaseSymbolInformation { name :: String
                                                   , kind :: SymbolKind
                                                   , tags :: Maybe [SymbolTag]
                                                   , containerName :: Maybe String }

data DocumentSymbolOptions = DocumentSymbolOptions { label :: Maybe String }

data CodeActionContext = CodeActionContext { diagnostics :: [Diagnostic]
                                           , only :: Maybe [CodeActionKind]
                                           , triggerKind :: Maybe CodeActionTriggerKind }

data CodeActionOptions = CodeActionOptions { codeActionKinds :: Maybe [CodeActionKind]
                                           , resolveProvider :: Maybe Bool }

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { resolveProvider :: Maybe Bool }

data CodeLensOptions = CodeLensOptions { resolveProvider :: Maybe Bool }

data DocumentLinkOptions = DocumentLinkOptions { resolveProvider :: Maybe Bool }

data FormattingOptions = FormattingOptions { tabSize :: Int
                                           , insertSpaces :: Bool
                                           , trimTrailingWhitespace :: Maybe Bool
                                           , insertFinalNewline :: Maybe Bool
                                           , trimFinalNewlines :: Maybe Bool }

data DocumentFormattingOptions = DocumentFormattingOptions {  }

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions {  }

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { firstTriggerCharacter :: String
                                                                       , moreTriggerCharacter :: Maybe [String] }

data RenameOptions = RenameOptions { prepareProvider :: Maybe Bool }

data ExecuteCommandOptions = ExecuteCommandOptions { commands :: [String] }

data SemanticTokensLegend = SemanticTokensLegend { tokenTypes :: [String]
                                                 , tokenModifiers :: [String] }

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { version :: Either Int () }

data AnnotatedTextEdit = AnnotatedTextEdit { annotationId :: ChangeAnnotationIdentifier }

data ResourceOperation = ResourceOperation { kind :: String
                                           , annotationId :: Maybe ChangeAnnotationIdentifier }

data CreateFileOptions = CreateFileOptions { overwrite :: Maybe Bool
                                           , ignoreIfExists :: Maybe Bool }

data RenameFileOptions = RenameFileOptions { overwrite :: Maybe Bool
                                           , ignoreIfExists :: Maybe Bool }

data DeleteFileOptions = DeleteFileOptions { recursive :: Maybe Bool
                                           , ignoreIfNotExists :: Maybe Bool }

data FileOperationPattern = FileOperationPattern { glob :: String
                                                 , matches :: Maybe FileOperationPatternKind
                                                 , options :: Maybe FileOperationPatternOptions }

data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport { uri :: LSP.Protocol.Support.DocumentUri
                                                                                   , version :: Either Int () }

data WorkspaceUnchangedDocumentDiagnosticReport = WorkspaceUnchangedDocumentDiagnosticReport { uri :: LSP.Protocol.Support.DocumentUri
                                                                                             , version :: Either Int () }

data LSPObject = LSPObject {  }

data NotebookCell = NotebookCell { kind :: NotebookCellKind
                                 , document :: LSP.Protocol.Support.DocumentUri
                                 , metadata :: Maybe LSPObject
                                 , executionSummary :: Maybe ExecutionSummary }

data NotebookCellArrayChange = NotebookCellArrayChange { start :: Int
                                                       , deleteCount :: Int
                                                       , cells :: Maybe [NotebookCell] }

data ClientCapabilities = ClientCapabilities { workspace :: Maybe WorkspaceClientCapabilities
                                             , textDocument :: Maybe TextDocumentClientCapabilities
                                             , notebookDocument :: Maybe NotebookDocumentClientCapabilities
                                             , window :: Maybe WindowClientCapabilities
                                             , general :: Maybe GeneralClientCapabilities
                                             , experimental :: Maybe LSPAny }

data TextDocumentSyncOptions = TextDocumentSyncOptions { openClose :: Maybe Bool
                                                       , change :: Maybe TextDocumentSyncKind
                                                       , willSave :: Maybe Bool
                                                       , willSaveWaitUntil :: Maybe Bool
                                                       , save :: Maybe (Either Bool SaveOptions) }

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookSelector :: [Either () ()]
                                                               , save :: Maybe Bool }

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }

data WorkspaceFoldersServerCapabilities = WorkspaceFoldersServerCapabilities { supported :: Maybe Bool
                                                                             , changeNotifications :: Maybe (Either String Bool) }

data FileOperationOptions = FileOperationOptions { didCreate :: Maybe FileOperationRegistrationOptions
                                                 , willCreate :: Maybe FileOperationRegistrationOptions
                                                 , didRename :: Maybe FileOperationRegistrationOptions
                                                 , willRename :: Maybe FileOperationRegistrationOptions
                                                 , didDelete :: Maybe FileOperationRegistrationOptions
                                                 , willDelete :: Maybe FileOperationRegistrationOptions }

data CodeDescription = CodeDescription { href :: URI }

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { location :: Location
                                                                 , message :: String }

data ParameterInformation = ParameterInformation { label :: Either String (Int
                                                                          ,Int)
                                                 , documentation :: Maybe (Either String MarkupContent) }

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebook :: Either String NotebookDocumentFilter
                                                                     , language :: Maybe String }

data FileOperationPatternOptions = FileOperationPatternOptions { ignoreCase :: Maybe Bool }

data ExecutionSummary = ExecutionSummary { executionOrder :: Int
                                         , success :: Maybe Bool }

data WorkspaceClientCapabilities = WorkspaceClientCapabilities { applyEdit :: Maybe Bool
                                                               , workspaceEdit :: Maybe WorkspaceEditClientCapabilities
                                                               , didChangeConfiguration :: Maybe DidChangeConfigurationClientCapabilities
                                                               , didChangeWatchedFiles :: Maybe DidChangeWatchedFilesClientCapabilities
                                                               , symbol :: Maybe WorkspaceSymbolClientCapabilities
                                                               , executeCommand :: Maybe ExecuteCommandClientCapabilities
                                                               , workspaceFolders :: Maybe Bool
                                                               , configuration :: Maybe Bool
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

data WindowClientCapabilities = WindowClientCapabilities { workDoneProgress :: Maybe Bool
                                                         , showMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , showDocument :: Maybe ShowDocumentClientCapabilities }

data GeneralClientCapabilities = GeneralClientCapabilities { staleRequestSupport :: Maybe ()
                                                           , regularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , markdown :: Maybe MarkdownClientCapabilities
                                                           , positionEncodings :: Maybe [PositionEncodingKind] }

data RelativePattern = RelativePattern { baseUri :: Either WorkspaceFolder URI
                                       , pattern :: Pattern }

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { documentChanges :: Maybe Bool
                                                                       , resourceOperations :: Maybe [ResourceOperationKind]
                                                                       , failureHandling :: Maybe FailureHandlingKind
                                                                       , normalizesLineEndings :: Maybe Bool
                                                                       , changeAnnotationSupport :: Maybe () }

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { dynamicRegistration :: Maybe Bool }

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                                       , relativePatternSupport :: Maybe Bool }

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                           , symbolKind :: Maybe ()
                                                                           , tagSupport :: Maybe ()
                                                                           , resolveSupport :: Maybe () }

data ExecuteCommandClientCapabilities = ExecuteCommandClientCapabilities { dynamicRegistration :: Maybe Bool }

data SemanticTokensWorkspaceClientCapabilities = SemanticTokensWorkspaceClientCapabilities { refreshSupport :: Maybe Bool }

data CodeLensWorkspaceClientCapabilities = CodeLensWorkspaceClientCapabilities { refreshSupport :: Maybe Bool }

data FileOperationClientCapabilities = FileOperationClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                       , didCreate :: Maybe Bool
                                                                       , willCreate :: Maybe Bool
                                                                       , didRename :: Maybe Bool
                                                                       , willRename :: Maybe Bool
                                                                       , didDelete :: Maybe Bool
                                                                       , willDelete :: Maybe Bool }

data InlineValueWorkspaceClientCapabilities = InlineValueWorkspaceClientCapabilities { refreshSupport :: Maybe Bool }

data InlayHintWorkspaceClientCapabilities = InlayHintWorkspaceClientCapabilities { refreshSupport :: Maybe Bool }

data DiagnosticWorkspaceClientCapabilities = DiagnosticWorkspaceClientCapabilities { refreshSupport :: Maybe Bool }

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                             , willSave :: Maybe Bool
                                                                             , willSaveWaitUntil :: Maybe Bool
                                                                             , didSave :: Maybe Bool }

data CompletionClientCapabilities = CompletionClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                 , completionItem :: Maybe ()
                                                                 , completionItemKind :: Maybe ()
                                                                 , insertTextMode :: Maybe InsertTextMode
                                                                 , contextSupport :: Maybe Bool
                                                                 , completionList :: Maybe () }

data HoverClientCapabilities = HoverClientCapabilities { dynamicRegistration :: Maybe Bool
                                                       , contentFormat :: Maybe [MarkupKind] }

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                       , signatureInformation :: Maybe ()
                                                                       , contextSupport :: Maybe Bool }

data DeclarationClientCapabilities = DeclarationClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                   , linkSupport :: Maybe Bool }

data DefinitionClientCapabilities = DefinitionClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                 , linkSupport :: Maybe Bool }

data TypeDefinitionClientCapabilities = TypeDefinitionClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                         , linkSupport :: Maybe Bool }

data ImplementationClientCapabilities = ImplementationClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                         , linkSupport :: Maybe Bool }

data ReferenceClientCapabilities = ReferenceClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentHighlightClientCapabilities = DocumentHighlightClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentSymbolClientCapabilities = DocumentSymbolClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                         , symbolKind :: Maybe ()
                                                                         , hierarchicalDocumentSymbolSupport :: Maybe Bool
                                                                         , tagSupport :: Maybe ()
                                                                         , labelSupport :: Maybe Bool }

data CodeActionClientCapabilities = CodeActionClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                 , codeActionLiteralSupport :: Maybe ()
                                                                 , isPreferredSupport :: Maybe Bool
                                                                 , disabledSupport :: Maybe Bool
                                                                 , dataSupport :: Maybe Bool
                                                                 , resolveSupport :: Maybe ()
                                                                 , honorsChangeAnnotations :: Maybe Bool }

data CodeLensClientCapabilities = CodeLensClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                     , tooltipSupport :: Maybe Bool }

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { dynamicRegistration :: Maybe Bool }

data DocumentOnTypeFormattingClientCapabilities = DocumentOnTypeFormattingClientCapabilities { dynamicRegistration :: Maybe Bool }

data RenameClientCapabilities = RenameClientCapabilities { dynamicRegistration :: Maybe Bool
                                                         , prepareSupport :: Maybe Bool
                                                         , prepareSupportDefaultBehavior :: Maybe PrepareSupportDefaultBehavior
                                                         , honorsChangeAnnotations :: Maybe Bool }

data FoldingRangeClientCapabilities = FoldingRangeClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                     , rangeLimit :: Maybe Int
                                                                     , lineFoldingOnly :: Maybe Bool
                                                                     , foldingRangeKind :: Maybe ()
                                                                     , foldingRange :: Maybe () }

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { dynamicRegistration :: Maybe Bool }

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { relatedInformation :: Maybe Bool
                                                                                 , tagSupport :: Maybe ()
                                                                                 , versionSupport :: Maybe Bool
                                                                                 , codeDescriptionSupport :: Maybe Bool
                                                                                 , dataSupport :: Maybe Bool }

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { dynamicRegistration :: Maybe Bool }

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                         , requests :: ()
                                                                         , tokenTypes :: [String]
                                                                         , tokenModifiers :: [String]
                                                                         , formats :: [TokenFormat]
                                                                         , overlappingTokenSupport :: Maybe Bool
                                                                         , multilineTokenSupport :: Maybe Bool
                                                                         , serverCancelSupport :: Maybe Bool
                                                                         , augmentsSyntaxTokens :: Maybe Bool }

data LinkedEditingRangeClientCapabilities = LinkedEditingRangeClientCapabilities { dynamicRegistration :: Maybe Bool }

data MonikerClientCapabilities = MonikerClientCapabilities { dynamicRegistration :: Maybe Bool }

data TypeHierarchyClientCapabilities = TypeHierarchyClientCapabilities { dynamicRegistration :: Maybe Bool }

data InlineValueClientCapabilities = InlineValueClientCapabilities { dynamicRegistration :: Maybe Bool }

data InlayHintClientCapabilities = InlayHintClientCapabilities { dynamicRegistration :: Maybe Bool
                                                               , resolveSupport :: Maybe () }

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                 , relatedDocumentSupport :: Maybe Bool }

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { dynamicRegistration :: Maybe Bool
                                                                                     , executionSummarySupport :: Maybe Bool }

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { messageActionItem :: Maybe () }

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { support :: Bool }

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { engine :: String
                                                                                 , version :: Maybe String }

data MarkdownClientCapabilities = MarkdownClientCapabilities { parser :: String
                                                             , version :: Maybe String
                                                             , allowedTags :: Maybe [String] }