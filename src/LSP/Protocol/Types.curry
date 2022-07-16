-- NOTE: This file is generated automatically and should not be edited manually!
module LSP.Protocol.Types where

import LSP.Utils.JSON
import LSP.Protocol.Support
import Data.Map
import JSON.Data

instance FromJSON ImplementationParams where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationParams {  }
      _ -> Left "Unrecognized ImplementationParams value"

instance FromJSON Location where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            Location { locationUri = parsedUri, locationRange = parsedRange }
      _ -> Left "Unrecognized Location value"

instance FromJSON ImplementationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationRegistrationOptions {  }
      _ -> Left "Unrecognized ImplementationRegistrationOptions value"

instance FromJSON TypeDefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionParams {  }
      _ -> Left "Unrecognized TypeDefinitionParams value"

instance FromJSON TypeDefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionRegistrationOptions {  }
      _ -> Left "Unrecognized TypeDefinitionRegistrationOptions value"

instance FromJSON WorkspaceFolder where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedName <- lookupFromJSON "name" vs
           return
            WorkspaceFolder { workspaceFolderUri = parsedUri
                            , workspaceFolderName = parsedName }
      _ -> Left "Unrecognized WorkspaceFolder value"

instance FromJSON DidChangeWorkspaceFoldersParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEvent <- lookupFromJSON "event" vs
           return
            DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent = parsedEvent }
      _ -> Left "Unrecognized DidChangeWorkspaceFoldersParams value"

instance FromJSON ConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            ConfigurationParams { configurationParamsItems = parsedItems }
      _ -> Left "Unrecognized ConfigurationParams value"

instance FromJSON PartialResultParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           return
            PartialResultParams { partialResultParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left "Unrecognized PartialResultParams value"

instance FromJSON DocumentColorParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentColorParams { documentColorParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized DocumentColorParams value"

instance FromJSON ColorInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedColor <- lookupFromJSON "color" vs
           return
            ColorInformation { colorInformationRange = parsedRange
                             , colorInformationColor = parsedColor }
      _ -> Left "Unrecognized ColorInformation value"

instance FromJSON DocumentColorRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorRegistrationOptions {  }
      _ -> Left "Unrecognized DocumentColorRegistrationOptions value"

instance FromJSON ColorPresentationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedColor <- lookupFromJSON "color" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            ColorPresentationParams { colorPresentationParamsTextDocument = parsedTextDocument
                                    , colorPresentationParamsColor = parsedColor
                                    , colorPresentationParamsRange = parsedRange }
      _ -> Left "Unrecognized ColorPresentationParams value"

instance FromJSON ColorPresentation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedTextEdit <- lookupMaybeFromJSON "textEdit" vs
           parsedAdditionalTextEdits <- lookupMaybeFromJSON
                                         "additionalTextEdits"
                                         vs
           return
            ColorPresentation { colorPresentationLabel = parsedLabel
                              , colorPresentationTextEdit = parsedTextEdit
                              , colorPresentationAdditionalTextEdits = parsedAdditionalTextEdits }
      _ -> Left "Unrecognized ColorPresentation value"

instance FromJSON WorkDoneProgressOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left "Unrecognized WorkDoneProgressOptions value"

instance FromJSON TextDocumentRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           return
            TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector = parsedDocumentSelector }
      _ -> Left "Unrecognized TextDocumentRegistrationOptions value"

instance FromJSON FoldingRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            FoldingRangeParams { foldingRangeParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized FoldingRangeParams value"

instance FromJSON FoldingRange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStartLine <- lookupFromJSON "startLine" vs
           parsedStartCharacter <- lookupMaybeFromJSON "startCharacter" vs
           parsedEndLine <- lookupFromJSON "endLine" vs
           parsedEndCharacter <- lookupMaybeFromJSON "endCharacter" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedCollapsedText <- lookupMaybeFromJSON "collapsedText" vs
           return
            FoldingRange { foldingRangeStartLine = parsedStartLine
                         , foldingRangeStartCharacter = parsedStartCharacter
                         , foldingRangeEndLine = parsedEndLine
                         , foldingRangeEndCharacter = parsedEndCharacter
                         , foldingRangeKind = parsedKind
                         , foldingRangeCollapsedText = parsedCollapsedText }
      _ -> Left "Unrecognized FoldingRange value"

instance FromJSON FoldingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeRegistrationOptions {  }
      _ -> Left "Unrecognized FoldingRangeRegistrationOptions value"

instance FromJSON DeclarationParams where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationParams {  }
      _ -> Left "Unrecognized DeclarationParams value"

instance FromJSON DeclarationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationRegistrationOptions {  }
      _ -> Left "Unrecognized DeclarationRegistrationOptions value"

instance FromJSON SelectionRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPositions <- lookupFromJSON "positions" vs
           return
            SelectionRangeParams { selectionRangeParamsTextDocument = parsedTextDocument
                                 , selectionRangeParamsPositions = parsedPositions }
      _ -> Left "Unrecognized SelectionRangeParams value"

instance FromJSON SelectionRange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedParent <- lookupMaybeFromJSON "parent" vs
           return
            SelectionRange { selectionRangeRange = parsedRange
                           , selectionRangeParent = parsedParent }
      _ -> Left "Unrecognized SelectionRange value"

instance FromJSON SelectionRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeRegistrationOptions {  }
      _ -> Left "Unrecognized SelectionRangeRegistrationOptions value"

instance FromJSON WorkDoneProgressCreateParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken = parsedToken }
      _ -> Left "Unrecognized WorkDoneProgressCreateParams value"

instance FromJSON WorkDoneProgressCancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken = parsedToken }
      _ -> Left "Unrecognized WorkDoneProgressCancelParams value"

instance FromJSON CallHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyPrepareParams {  }
      _ -> Left "Unrecognized CallHierarchyPrepareParams value"

instance FromJSON CallHierarchyItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedSelectionRange <- lookupFromJSON "selectionRange" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CallHierarchyItem { callHierarchyItemName = parsedName
                              , callHierarchyItemKind = parsedKind
                              , callHierarchyItemTags = parsedTags
                              , callHierarchyItemDetail = parsedDetail
                              , callHierarchyItemUri = parsedUri
                              , callHierarchyItemRange = parsedRange
                              , callHierarchyItemSelectionRange = parsedSelectionRange
                              , callHierarchyItemData = parsedData }
      _ -> Left "Unrecognized CallHierarchyItem value"

instance FromJSON CallHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyRegistrationOptions {  }
      _ -> Left "Unrecognized CallHierarchyRegistrationOptions value"

instance FromJSON CallHierarchyIncomingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem = parsedItem }
      _ -> Left "Unrecognized CallHierarchyIncomingCallsParams value"

instance FromJSON CallHierarchyIncomingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrom <- lookupFromJSON "from" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyIncomingCall { callHierarchyIncomingCallFrom = parsedFrom
                                      , callHierarchyIncomingCallFromRanges = parsedFromRanges }
      _ -> Left "Unrecognized CallHierarchyIncomingCall value"

instance FromJSON CallHierarchyOutgoingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem = parsedItem }
      _ -> Left "Unrecognized CallHierarchyOutgoingCallsParams value"

instance FromJSON CallHierarchyOutgoingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTo <- lookupFromJSON "to" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo = parsedTo
                                      , callHierarchyOutgoingCallFromRanges = parsedFromRanges }
      _ -> Left "Unrecognized CallHierarchyOutgoingCall value"

instance FromJSON SemanticTokensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            SemanticTokensParams { semanticTokensParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized SemanticTokensParams value"

instance FromJSON SemanticTokens where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokens { semanticTokensResultId = parsedResultId
                           , semanticTokensData = parsedData }
      _ -> Left "Unrecognized SemanticTokens value"

instance FromJSON SemanticTokensPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokensPartialResult { semanticTokensPartialResultData = parsedData }
      _ -> Left "Unrecognized SemanticTokensPartialResult value"

instance FromJSON SemanticTokensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SemanticTokensRegistrationOptions {  }
      _ -> Left "Unrecognized SemanticTokensRegistrationOptions value"

instance FromJSON SemanticTokensDeltaParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPreviousResultId <- lookupFromJSON "previousResultId" vs
           return
            SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument = parsedTextDocument
                                      , semanticTokensDeltaParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left "Unrecognized SemanticTokensDeltaParams value"

instance FromJSON SemanticTokensDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDelta { semanticTokensDeltaResultId = parsedResultId
                                , semanticTokensDeltaEdits = parsedEdits }
      _ -> Left "Unrecognized SemanticTokensDelta value"

instance FromJSON SemanticTokensDeltaPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits = parsedEdits }
      _ -> Left "Unrecognized SemanticTokensDeltaPartialResult value"

instance FromJSON SemanticTokensRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument = parsedTextDocument
                                      , semanticTokensRangeParamsRange = parsedRange }
      _ -> Left "Unrecognized SemanticTokensRangeParams value"

instance FromJSON ShowDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedExternal <- lookupMaybeFromJSON "external" vs
           parsedTakeFocus <- lookupMaybeFromJSON "takeFocus" vs
           parsedSelection <- lookupMaybeFromJSON "selection" vs
           return
            ShowDocumentParams { showDocumentParamsUri = parsedUri
                               , showDocumentParamsExternal = parsedExternal
                               , showDocumentParamsTakeFocus = parsedTakeFocus
                               , showDocumentParamsSelection = parsedSelection }
      _ -> Left "Unrecognized ShowDocumentParams value"

instance FromJSON ShowDocumentResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSuccess <- lookupFromJSON "success" vs
           return
            ShowDocumentResult { showDocumentResultSuccess = parsedSuccess }
      _ -> Left "Unrecognized ShowDocumentResult value"

instance FromJSON LinkedEditingRangeParams where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeParams {  }
      _ -> Left "Unrecognized LinkedEditingRangeParams value"

instance FromJSON LinkedEditingRanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRanges <- lookupFromJSON "ranges" vs
           parsedWordPattern <- lookupMaybeFromJSON "wordPattern" vs
           return
            LinkedEditingRanges { linkedEditingRangesRanges = parsedRanges
                                , linkedEditingRangesWordPattern = parsedWordPattern }
      _ -> Left "Unrecognized LinkedEditingRanges value"

instance FromJSON LinkedEditingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeRegistrationOptions {  }
      _ -> Left "Unrecognized LinkedEditingRangeRegistrationOptions value"

instance FromJSON CreateFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return CreateFilesParams { createFilesParamsFiles = parsedFiles }
      _ -> Left "Unrecognized CreateFilesParams value"

instance FromJSON WorkspaceEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedChanges <- lookupMaybeFromJSON "changes" vs
           parsedDocumentChanges <- lookupMaybeFromJSON "documentChanges" vs
           parsedChangeAnnotations <- lookupMaybeFromJSON "changeAnnotations"
                                       vs
           return
            WorkspaceEdit { workspaceEditChanges = parsedChanges
                          , workspaceEditDocumentChanges = parsedDocumentChanges
                          , workspaceEditChangeAnnotations = parsedChangeAnnotations }
      _ -> Left "Unrecognized WorkspaceEdit value"

instance FromJSON FileOperationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFilters <- lookupFromJSON "filters" vs
           return
            FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters = parsedFilters }
      _ -> Left "Unrecognized FileOperationRegistrationOptions value"

instance FromJSON RenameFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return RenameFilesParams { renameFilesParamsFiles = parsedFiles }
      _ -> Left "Unrecognized RenameFilesParams value"

instance FromJSON DeleteFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return DeleteFilesParams { deleteFilesParamsFiles = parsedFiles }
      _ -> Left "Unrecognized DeleteFilesParams value"

instance FromJSON MonikerParams where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerParams {  }
      _ -> Left "Unrecognized MonikerParams value"

instance FromJSON Moniker where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScheme <- lookupFromJSON "scheme" vs
           parsedIdentifier <- lookupFromJSON "identifier" vs
           parsedUnique <- lookupFromJSON "unique" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            Moniker { monikerScheme = parsedScheme
                    , monikerIdentifier = parsedIdentifier
                    , monikerUnique = parsedUnique
                    , monikerKind = parsedKind }
      _ -> Left "Unrecognized Moniker value"

instance FromJSON MonikerRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerRegistrationOptions {  }
      _ -> Left "Unrecognized MonikerRegistrationOptions value"

instance FromJSON TypeHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyPrepareParams {  }
      _ -> Left "Unrecognized TypeHierarchyPrepareParams value"

instance FromJSON TypeHierarchyItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedSelectionRange <- lookupFromJSON "selectionRange" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            TypeHierarchyItem { typeHierarchyItemName = parsedName
                              , typeHierarchyItemKind = parsedKind
                              , typeHierarchyItemTags = parsedTags
                              , typeHierarchyItemDetail = parsedDetail
                              , typeHierarchyItemUri = parsedUri
                              , typeHierarchyItemRange = parsedRange
                              , typeHierarchyItemSelectionRange = parsedSelectionRange
                              , typeHierarchyItemData = parsedData }
      _ -> Left "Unrecognized TypeHierarchyItem value"

instance FromJSON TypeHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyRegistrationOptions {  }
      _ -> Left "Unrecognized TypeHierarchyRegistrationOptions value"

instance FromJSON TypeHierarchySupertypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem = parsedItem }
      _ -> Left "Unrecognized TypeHierarchySupertypesParams value"

instance FromJSON TypeHierarchySubtypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem = parsedItem }
      _ -> Left "Unrecognized TypeHierarchySubtypesParams value"

instance FromJSON InlineValueParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedContext <- lookupFromJSON "context" vs
           return
            InlineValueParams { inlineValueParamsTextDocument = parsedTextDocument
                              , inlineValueParamsRange = parsedRange
                              , inlineValueParamsContext = parsedContext }
      _ -> Left "Unrecognized InlineValueParams value"

instance FromJSON InlineValueRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueRegistrationOptions {  }
      _ -> Left "Unrecognized InlineValueRegistrationOptions value"

instance FromJSON InlayHintParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            InlayHintParams { inlayHintParamsTextDocument = parsedTextDocument
                            , inlayHintParamsRange = parsedRange }
      _ -> Left "Unrecognized InlayHintParams value"

instance FromJSON InlayHint where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPosition <- lookupFromJSON "position" vs
           parsedLabel <- lookupFromJSON "label" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedTextEdits <- lookupMaybeFromJSON "textEdits" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedPaddingLeft <- lookupMaybeFromJSON "paddingLeft" vs
           parsedPaddingRight <- lookupMaybeFromJSON "paddingRight" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            InlayHint { inlayHintPosition = parsedPosition
                      , inlayHintLabel = parsedLabel
                      , inlayHintKind = parsedKind
                      , inlayHintTextEdits = parsedTextEdits
                      , inlayHintTooltip = parsedTooltip
                      , inlayHintPaddingLeft = parsedPaddingLeft
                      , inlayHintPaddingRight = parsedPaddingRight
                      , inlayHintData = parsedData }
      _ -> Left "Unrecognized InlayHint value"

instance FromJSON InlayHintRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlayHintRegistrationOptions {  }
      _ -> Left "Unrecognized InlayHintRegistrationOptions value"

instance FromJSON DocumentDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultId <- lookupMaybeFromJSON "previousResultId" vs
           return
            DocumentDiagnosticParams { documentDiagnosticParamsTextDocument = parsedTextDocument
                                     , documentDiagnosticParamsIdentifier = parsedIdentifier
                                     , documentDiagnosticParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left "Unrecognized DocumentDiagnosticParams value"

instance FromJSON DocumentDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupFromJSON "relatedDocuments" vs
           return
            DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments = parsedRelatedDocuments }
      _ -> Left "Unrecognized DocumentDiagnosticReportPartialResult value"

instance FromJSON DiagnosticServerCancellationData where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetriggerRequest <- lookupFromJSON "retriggerRequest" vs
           return
            DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest = parsedRetriggerRequest }
      _ -> Left "Unrecognized DiagnosticServerCancellationData value"

instance FromJSON DiagnosticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DiagnosticRegistrationOptions {  }
      _ -> Left "Unrecognized DiagnosticRegistrationOptions value"

instance FromJSON WorkspaceDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultIds <- lookupFromJSON "previousResultIds" vs
           return
            WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier = parsedIdentifier
                                      , workspaceDiagnosticParamsPreviousResultIds = parsedPreviousResultIds }
      _ -> Left "Unrecognized WorkspaceDiagnosticParams value"

instance FromJSON WorkspaceDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReport { workspaceDiagnosticReportItems = parsedItems }
      _ -> Left "Unrecognized WorkspaceDiagnosticReport value"

instance FromJSON WorkspaceDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems = parsedItems }
      _ -> Left "Unrecognized WorkspaceDiagnosticReportPartialResult value"

instance FromJSON DidOpenNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                          , didOpenNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ -> Left "Unrecognized DidOpenNotebookDocumentParams value"

instance FromJSON DidChangeNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedChange <- lookupFromJSON "change" vs
           return
            DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                            , didChangeNotebookDocumentParamsChange = parsedChange }
      _ -> Left "Unrecognized DidChangeNotebookDocumentParams value"

instance FromJSON DidSaveNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           return
            DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument = parsedNotebookDocument }
      _ -> Left "Unrecognized DidSaveNotebookDocumentParams value"

instance FromJSON DidCloseNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                           , didCloseNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ -> Left "Unrecognized DidCloseNotebookDocumentParams value"

instance FromJSON RegistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRegistrations <- lookupFromJSON "registrations" vs
           return
            RegistrationParams { registrationParamsRegistrations = parsedRegistrations }
      _ -> Left "Unrecognized RegistrationParams value"

instance FromJSON UnregistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUnregisterations <- lookupFromJSON "unregisterations" vs
           return
            UnregistrationParams { unregistrationParamsUnregisterations = parsedUnregisterations }
      _ -> Left "Unrecognized UnregistrationParams value"

instance FromJSON InitializeParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializeParams {  }
      _ -> Left "Unrecognized InitializeParams value"

instance FromJSON InitializeResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCapabilities <- lookupFromJSON "capabilities" vs
           parsedServerInfo <- lookupMaybeFromJSON "serverInfo" vs
           return
            InitializeResult { initializeResultCapabilities = parsedCapabilities
                             , initializeResultServerInfo = parsedServerInfo }
      _ -> Left "Unrecognized InitializeResult value"

instance FromJSON InitializeError where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetry <- lookupFromJSON "retry" vs
           return InitializeError { initializeErrorRetry = parsedRetry }
      _ -> Left "Unrecognized InitializeError value"

instance FromJSON InitializedParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializedParams {  }
      _ -> Left "Unrecognized InitializedParams value"

instance FromJSON DidChangeConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSettings <- lookupFromJSON "settings" vs
           return
            DidChangeConfigurationParams { didChangeConfigurationParamsSettings = parsedSettings }
      _ -> Left "Unrecognized DidChangeConfigurationParams value"

instance FromJSON DidChangeConfigurationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSection <- lookupMaybeFromJSON "section" vs
           return
            DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection = parsedSection }
      _ -> Left "Unrecognized DidChangeConfigurationRegistrationOptions value"

instance FromJSON ShowMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            ShowMessageParams { showMessageParamsType = parsedType
                              , showMessageParamsMessage = parsedMessage }
      _ -> Left "Unrecognized ShowMessageParams value"

instance FromJSON ShowMessageRequestParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           parsedActions <- lookupMaybeFromJSON "actions" vs
           return
            ShowMessageRequestParams { showMessageRequestParamsType = parsedType
                                     , showMessageRequestParamsMessage = parsedMessage
                                     , showMessageRequestParamsActions = parsedActions }
      _ -> Left "Unrecognized ShowMessageRequestParams value"

instance FromJSON MessageActionItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           return MessageActionItem { messageActionItemTitle = parsedTitle }
      _ -> Left "Unrecognized MessageActionItem value"

instance FromJSON LogMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            LogMessageParams { logMessageParamsType = parsedType
                             , logMessageParamsMessage = parsedMessage }
      _ -> Left "Unrecognized LogMessageParams value"

instance FromJSON DidOpenTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized DidOpenTextDocumentParams value"

instance FromJSON DidChangeTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedContentChanges <- lookupFromJSON "contentChanges" vs
           return
            DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument = parsedTextDocument
                                        , didChangeTextDocumentParamsContentChanges = parsedContentChanges }
      _ -> Left "Unrecognized DidChangeTextDocumentParams value"

instance FromJSON TextDocumentChangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSyncKind <- lookupFromJSON "syncKind" vs
           return
            TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind = parsedSyncKind }
      _ -> Left "Unrecognized TextDocumentChangeRegistrationOptions value"

instance FromJSON DidCloseTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized DidCloseTextDocumentParams value"

instance FromJSON DidSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedText <- lookupMaybeFromJSON "text" vs
           return
            DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument = parsedTextDocument
                                      , didSaveTextDocumentParamsText = parsedText }
      _ -> Left "Unrecognized DidSaveTextDocumentParams value"

instance FromJSON TextDocumentSaveRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TextDocumentSaveRegistrationOptions {  }
      _ -> Left "Unrecognized TextDocumentSaveRegistrationOptions value"

instance FromJSON WillSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedReason <- lookupFromJSON "reason" vs
           return
            WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument = parsedTextDocument
                                       , willSaveTextDocumentParamsReason = parsedReason }
      _ -> Left "Unrecognized WillSaveTextDocumentParams value"

instance FromJSON TextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedNewText <- lookupFromJSON "newText" vs
           return
            TextEdit { textEditRange = parsedRange
                     , textEditNewText = parsedNewText }
      _ -> Left "Unrecognized TextEdit value"

instance FromJSON DidChangeWatchedFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedChanges <- lookupFromJSON "changes" vs
           return
            DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges = parsedChanges }
      _ -> Left "Unrecognized DidChangeWatchedFilesParams value"

instance FromJSON DidChangeWatchedFilesRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWatchers <- lookupFromJSON "watchers" vs
           return
            DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers = parsedWatchers }
      _ -> Left "Unrecognized DidChangeWatchedFilesRegistrationOptions value"

instance FromJSON PublishDiagnosticsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           parsedDiagnostics <- lookupFromJSON "diagnostics" vs
           return
            PublishDiagnosticsParams { publishDiagnosticsParamsUri = parsedUri
                                     , publishDiagnosticsParamsVersion = parsedVersion
                                     , publishDiagnosticsParamsDiagnostics = parsedDiagnostics }
      _ -> Left "Unrecognized PublishDiagnosticsParams value"

instance FromJSON CompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return CompletionParams { completionParamsContext = parsedContext }
      _ -> Left "Unrecognized CompletionParams value"

instance FromJSON CompletionItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedLabelDetails <- lookupMaybeFromJSON "labelDetails" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedPreselect <- lookupMaybeFromJSON "preselect" vs
           parsedSortText <- lookupMaybeFromJSON "sortText" vs
           parsedFilterText <- lookupMaybeFromJSON "filterText" vs
           parsedInsertText <- lookupMaybeFromJSON "insertText" vs
           parsedInsertTextFormat <- lookupMaybeFromJSON "insertTextFormat" vs
           parsedInsertTextMode <- lookupMaybeFromJSON "insertTextMode" vs
           parsedTextEdit <- lookupMaybeFromJSON "textEdit" vs
           parsedTextEditText <- lookupMaybeFromJSON "textEditText" vs
           parsedAdditionalTextEdits <- lookupMaybeFromJSON
                                         "additionalTextEdits"
                                         vs
           parsedCommitCharacters <- lookupMaybeFromJSON "commitCharacters" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CompletionItem { completionItemLabel = parsedLabel
                           , completionItemLabelDetails = parsedLabelDetails
                           , completionItemKind = parsedKind
                           , completionItemTags = parsedTags
                           , completionItemDetail = parsedDetail
                           , completionItemDocumentation = parsedDocumentation
                           , completionItemDeprecated = parsedDeprecated
                           , completionItemPreselect = parsedPreselect
                           , completionItemSortText = parsedSortText
                           , completionItemFilterText = parsedFilterText
                           , completionItemInsertText = parsedInsertText
                           , completionItemInsertTextFormat = parsedInsertTextFormat
                           , completionItemInsertTextMode = parsedInsertTextMode
                           , completionItemTextEdit = parsedTextEdit
                           , completionItemTextEditText = parsedTextEditText
                           , completionItemAdditionalTextEdits = parsedAdditionalTextEdits
                           , completionItemCommitCharacters = parsedCommitCharacters
                           , completionItemCommand = parsedCommand
                           , completionItemData = parsedData }
      _ -> Left "Unrecognized CompletionItem value"

instance FromJSON CompletionList where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIsIncomplete <- lookupFromJSON "isIncomplete" vs
           parsedItemDefaults <- lookupMaybeFromJSON "itemDefaults" vs
           parsedItems <- lookupFromJSON "items" vs
           return
            CompletionList { completionListIsIncomplete = parsedIsIncomplete
                           , completionListItemDefaults = parsedItemDefaults
                           , completionListItems = parsedItems }
      _ -> Left "Unrecognized CompletionList value"

instance FromJSON CompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CompletionRegistrationOptions {  }
      _ -> Left "Unrecognized CompletionRegistrationOptions value"

instance FromJSON HoverParams where
  fromJSON j =
    case j of
      JObject vs -> do return HoverParams {  }
      _ -> Left "Unrecognized HoverParams value"

instance FromJSON Hover where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContents <- lookupFromJSON "contents" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           return
            Hover { hoverContents = parsedContents, hoverRange = parsedRange }
      _ -> Left "Unrecognized Hover value"

instance FromJSON HoverRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverRegistrationOptions {  }
      _ -> Left "Unrecognized HoverRegistrationOptions value"

instance FromJSON SignatureHelpParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return
            SignatureHelpParams { signatureHelpParamsContext = parsedContext }
      _ -> Left "Unrecognized SignatureHelpParams value"

instance FromJSON SignatureHelp where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSignatures <- lookupFromJSON "signatures" vs
           parsedActiveSignature <- lookupMaybeFromJSON "activeSignature" vs
           parsedActiveParameter <- lookupMaybeFromJSON "activeParameter" vs
           return
            SignatureHelp { signatureHelpSignatures = parsedSignatures
                          , signatureHelpActiveSignature = parsedActiveSignature
                          , signatureHelpActiveParameter = parsedActiveParameter }
      _ -> Left "Unrecognized SignatureHelp value"

instance FromJSON SignatureHelpRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SignatureHelpRegistrationOptions {  }
      _ -> Left "Unrecognized SignatureHelpRegistrationOptions value"

instance FromJSON DefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionParams {  }
      _ -> Left "Unrecognized DefinitionParams value"

instance FromJSON DefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionRegistrationOptions {  }
      _ -> Left "Unrecognized DefinitionRegistrationOptions value"

instance FromJSON ReferenceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupFromJSON "context" vs
           return ReferenceParams { referenceParamsContext = parsedContext }
      _ -> Left "Unrecognized ReferenceParams value"

instance FromJSON ReferenceRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ReferenceRegistrationOptions {  }
      _ -> Left "Unrecognized ReferenceRegistrationOptions value"

instance FromJSON DocumentHighlightParams where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightParams {  }
      _ -> Left "Unrecognized DocumentHighlightParams value"

instance FromJSON DocumentHighlight where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            DocumentHighlight { documentHighlightRange = parsedRange
                              , documentHighlightKind = parsedKind }
      _ -> Left "Unrecognized DocumentHighlight value"

instance FromJSON DocumentHighlightRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightRegistrationOptions {  }
      _ -> Left "Unrecognized DocumentHighlightRegistrationOptions value"

instance FromJSON DocumentSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentSymbolParams { documentSymbolParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized DocumentSymbolParams value"

instance FromJSON SymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedLocation <- lookupFromJSON "location" vs
           return
            SymbolInformation { symbolInformationDeprecated = parsedDeprecated
                              , symbolInformationLocation = parsedLocation }
      _ -> Left "Unrecognized SymbolInformation value"

instance FromJSON DocumentSymbol where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedSelectionRange <- lookupFromJSON "selectionRange" vs
           parsedChildren <- lookupMaybeFromJSON "children" vs
           return
            DocumentSymbol { documentSymbolName = parsedName
                           , documentSymbolDetail = parsedDetail
                           , documentSymbolKind = parsedKind
                           , documentSymbolTags = parsedTags
                           , documentSymbolDeprecated = parsedDeprecated
                           , documentSymbolRange = parsedRange
                           , documentSymbolSelectionRange = parsedSelectionRange
                           , documentSymbolChildren = parsedChildren }
      _ -> Left "Unrecognized DocumentSymbol value"

instance FromJSON DocumentSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentSymbolRegistrationOptions {  }
      _ -> Left "Unrecognized DocumentSymbolRegistrationOptions value"

instance FromJSON CodeActionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedContext <- lookupFromJSON "context" vs
           return
            CodeActionParams { codeActionParamsTextDocument = parsedTextDocument
                             , codeActionParamsRange = parsedRange
                             , codeActionParamsContext = parsedContext }
      _ -> Left "Unrecognized CodeActionParams value"

instance FromJSON Command where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            Command { commandTitle = parsedTitle
                    , commandCommand = parsedCommand
                    , commandArguments = parsedArguments }
      _ -> Left "Unrecognized Command value"

instance FromJSON CodeAction where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           parsedDiagnostics <- lookupMaybeFromJSON "diagnostics" vs
           parsedIsPreferred <- lookupMaybeFromJSON "isPreferred" vs
           parsedDisabled <- lookupMaybeFromJSON "disabled" vs
           parsedEdit <- lookupMaybeFromJSON "edit" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CodeAction { codeActionTitle = parsedTitle
                       , codeActionKind = parsedKind
                       , codeActionDiagnostics = parsedDiagnostics
                       , codeActionIsPreferred = parsedIsPreferred
                       , codeActionDisabled = parsedDisabled
                       , codeActionEdit = parsedEdit
                       , codeActionCommand = parsedCommand
                       , codeActionData = parsedData }
      _ -> Left "Unrecognized CodeAction value"

instance FromJSON CodeActionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeActionRegistrationOptions {  }
      _ -> Left "Unrecognized CodeActionRegistrationOptions value"

instance FromJSON WorkspaceSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedQuery <- lookupFromJSON "query" vs
           return
            WorkspaceSymbolParams { workspaceSymbolParamsQuery = parsedQuery }
      _ -> Left "Unrecognized WorkspaceSymbolParams value"

instance FromJSON WorkspaceSymbol where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLocation <- lookupFromJSON "location" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            WorkspaceSymbol { workspaceSymbolLocation = parsedLocation
                            , workspaceSymbolData = parsedData }
      _ -> Left "Unrecognized WorkspaceSymbol value"

instance FromJSON WorkspaceSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return WorkspaceSymbolRegistrationOptions {  }
      _ -> Left "Unrecognized WorkspaceSymbolRegistrationOptions value"

instance FromJSON CodeLensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            CodeLensParams { codeLensParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized CodeLensParams value"

instance FromJSON CodeLens where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CodeLens { codeLensRange = parsedRange
                     , codeLensCommand = parsedCommand
                     , codeLensData = parsedData }
      _ -> Left "Unrecognized CodeLens value"

instance FromJSON CodeLensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeLensRegistrationOptions {  }
      _ -> Left "Unrecognized CodeLensRegistrationOptions value"

instance FromJSON DocumentLinkParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentLinkParams { documentLinkParamsTextDocument = parsedTextDocument }
      _ -> Left "Unrecognized DocumentLinkParams value"

instance FromJSON DocumentLink where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedTarget <- lookupMaybeFromJSON "target" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            DocumentLink { documentLinkRange = parsedRange
                         , documentLinkTarget = parsedTarget
                         , documentLinkTooltip = parsedTooltip
                         , documentLinkData = parsedData }
      _ -> Left "Unrecognized DocumentLink value"

instance FromJSON DocumentLinkRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentLinkRegistrationOptions {  }
      _ -> Left "Unrecognized DocumentLinkRegistrationOptions value"

instance FromJSON DocumentFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentFormattingParams { documentFormattingParamsTextDocument = parsedTextDocument
                                     , documentFormattingParamsOptions = parsedOptions }
      _ -> Left "Unrecognized DocumentFormattingParams value"

instance FromJSON DocumentFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentFormattingRegistrationOptions {  }
      _ -> Left "Unrecognized DocumentFormattingRegistrationOptions value"

instance FromJSON DocumentRangeFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentRangeFormattingParams { documentRangeFormattingParamsTextDocument = parsedTextDocument
                                          , documentRangeFormattingParamsRange = parsedRange
                                          , documentRangeFormattingParamsOptions = parsedOptions }
      _ -> Left "Unrecognized DocumentRangeFormattingParams value"

instance FromJSON DocumentRangeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentRangeFormattingRegistrationOptions {  }
      _ ->
        Left "Unrecognized DocumentRangeFormattingRegistrationOptions value"

instance FromJSON DocumentOnTypeFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedCh <- lookupFromJSON "ch" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentOnTypeFormattingParams { documentOnTypeFormattingParamsTextDocument = parsedTextDocument
                                           , documentOnTypeFormattingParamsPosition = parsedPosition
                                           , documentOnTypeFormattingParamsCh = parsedCh
                                           , documentOnTypeFormattingParamsOptions = parsedOptions }
      _ -> Left "Unrecognized DocumentOnTypeFormattingParams value"

instance FromJSON DocumentOnTypeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentOnTypeFormattingRegistrationOptions {  }
      _ ->
        Left "Unrecognized DocumentOnTypeFormattingRegistrationOptions value"

instance FromJSON RenameParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedNewName <- lookupFromJSON "newName" vs
           return
            RenameParams { renameParamsTextDocument = parsedTextDocument
                         , renameParamsPosition = parsedPosition
                         , renameParamsNewName = parsedNewName }
      _ -> Left "Unrecognized RenameParams value"

instance FromJSON RenameRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return RenameRegistrationOptions {  }
      _ -> Left "Unrecognized RenameRegistrationOptions value"

instance FromJSON PrepareRenameParams where
  fromJSON j =
    case j of
      JObject vs -> do return PrepareRenameParams {  }
      _ -> Left "Unrecognized PrepareRenameParams value"

instance FromJSON ExecuteCommandParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            ExecuteCommandParams { executeCommandParamsCommand = parsedCommand
                                 , executeCommandParamsArguments = parsedArguments }
      _ -> Left "Unrecognized ExecuteCommandParams value"

instance FromJSON ExecuteCommandRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ExecuteCommandRegistrationOptions {  }
      _ -> Left "Unrecognized ExecuteCommandRegistrationOptions value"

instance FromJSON ApplyWorkspaceEditParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           parsedEdit <- lookupFromJSON "edit" vs
           return
            ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel = parsedLabel
                                     , applyWorkspaceEditParamsEdit = parsedEdit }
      _ -> Left "Unrecognized ApplyWorkspaceEditParams value"

instance FromJSON ApplyWorkspaceEditResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedApplied <- lookupFromJSON "applied" vs
           parsedFailureReason <- lookupMaybeFromJSON "failureReason" vs
           parsedFailedChange <- lookupMaybeFromJSON "failedChange" vs
           return
            ApplyWorkspaceEditResult { applyWorkspaceEditResultApplied = parsedApplied
                                     , applyWorkspaceEditResultFailureReason = parsedFailureReason
                                     , applyWorkspaceEditResultFailedChange = parsedFailedChange }
      _ -> Left "Unrecognized ApplyWorkspaceEditResult value"

instance FromJSON WorkDoneProgressBegin where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedTitle <- lookupFromJSON "title" vs
           parsedCancellable <- lookupMaybeFromJSON "cancellable" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           parsedPercentage <- lookupMaybeFromJSON "percentage" vs
           return
            WorkDoneProgressBegin { workDoneProgressBeginKind = parsedKind
                                  , workDoneProgressBeginTitle = parsedTitle
                                  , workDoneProgressBeginCancellable = parsedCancellable
                                  , workDoneProgressBeginMessage = parsedMessage
                                  , workDoneProgressBeginPercentage = parsedPercentage }
      _ -> Left "Unrecognized WorkDoneProgressBegin value"

instance FromJSON WorkDoneProgressReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedCancellable <- lookupMaybeFromJSON "cancellable" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           parsedPercentage <- lookupMaybeFromJSON "percentage" vs
           return
            WorkDoneProgressReport { workDoneProgressReportKind = parsedKind
                                   , workDoneProgressReportCancellable = parsedCancellable
                                   , workDoneProgressReportMessage = parsedMessage
                                   , workDoneProgressReportPercentage = parsedPercentage }
      _ -> Left "Unrecognized WorkDoneProgressReport value"

instance FromJSON WorkDoneProgressEnd where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           return
            WorkDoneProgressEnd { workDoneProgressEndKind = parsedKind
                                , workDoneProgressEndMessage = parsedMessage }
      _ -> Left "Unrecognized WorkDoneProgressEnd value"

instance FromJSON SetTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValue <- lookupFromJSON "value" vs
           return SetTraceParams { setTraceParamsValue = parsedValue }
      _ -> Left "Unrecognized SetTraceParams value"

instance FromJSON LogTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessage <- lookupFromJSON "message" vs
           parsedVerbose <- lookupMaybeFromJSON "verbose" vs
           return
            LogTraceParams { logTraceParamsMessage = parsedMessage
                           , logTraceParamsVerbose = parsedVerbose }
      _ -> Left "Unrecognized LogTraceParams value"

instance FromJSON CancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           return CancelParams { cancelParamsId = parsedId }
      _ -> Left "Unrecognized CancelParams value"

instance FromJSON ProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            ProgressParams { progressParamsToken = parsedToken
                           , progressParamsValue = parsedValue }
      _ -> Left "Unrecognized ProgressParams value"

instance FromJSON TextDocumentPositionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           return
            TextDocumentPositionParams { textDocumentPositionParamsTextDocument = parsedTextDocument
                                       , textDocumentPositionParamsPosition = parsedPosition }
      _ -> Left "Unrecognized TextDocumentPositionParams value"

instance FromJSON WorkDoneProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left "Unrecognized WorkDoneProgressParams value"

instance FromJSON LocationLink where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOriginSelectionRange <- lookupMaybeFromJSON
                                          "originSelectionRange"
                                          vs
           parsedTargetUri <- lookupFromJSON "targetUri" vs
           parsedTargetRange <- lookupFromJSON "targetRange" vs
           parsedTargetSelectionRange <- lookupFromJSON "targetSelectionRange"
                                          vs
           return
            LocationLink { locationLinkOriginSelectionRange = parsedOriginSelectionRange
                         , locationLinkTargetUri = parsedTargetUri
                         , locationLinkTargetRange = parsedTargetRange
                         , locationLinkTargetSelectionRange = parsedTargetSelectionRange }
      _ -> Left "Unrecognized LocationLink value"

instance FromJSON Range where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedEnd <- lookupFromJSON "end" vs
           return Range { rangeStart = parsedStart, rangeEnd = parsedEnd }
      _ -> Left "Unrecognized Range value"

instance FromJSON ImplementationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationOptions {  }
      _ -> Left "Unrecognized ImplementationOptions value"

instance FromJSON StaticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupMaybeFromJSON "id" vs
           return
            StaticRegistrationOptions { staticRegistrationOptionsId = parsedId }
      _ -> Left "Unrecognized StaticRegistrationOptions value"

instance FromJSON TypeDefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionOptions {  }
      _ -> Left "Unrecognized TypeDefinitionOptions value"

instance FromJSON WorkspaceFoldersChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAdded <- lookupFromJSON "added" vs
           parsedRemoved <- lookupFromJSON "removed" vs
           return
            WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded = parsedAdded
                                        , workspaceFoldersChangeEventRemoved = parsedRemoved }
      _ -> Left "Unrecognized WorkspaceFoldersChangeEvent value"

instance FromJSON ConfigurationItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScopeUri <- lookupMaybeFromJSON "scopeUri" vs
           parsedSection <- lookupMaybeFromJSON "section" vs
           return
            ConfigurationItem { configurationItemScopeUri = parsedScopeUri
                              , configurationItemSection = parsedSection }
      _ -> Left "Unrecognized ConfigurationItem value"

instance FromJSON TextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            TextDocumentIdentifier { textDocumentIdentifierUri = parsedUri }
      _ -> Left "Unrecognized TextDocumentIdentifier value"

instance FromJSON Color where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRed <- lookupFromJSON "red" vs
           parsedGreen <- lookupFromJSON "green" vs
           parsedBlue <- lookupFromJSON "blue" vs
           parsedAlpha <- lookupFromJSON "alpha" vs
           return
            Color { colorRed = parsedRed
                  , colorGreen = parsedGreen
                  , colorBlue = parsedBlue
                  , colorAlpha = parsedAlpha }
      _ -> Left "Unrecognized Color value"

instance FromJSON DocumentColorOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorOptions {  }
      _ -> Left "Unrecognized DocumentColorOptions value"

instance FromJSON FoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeOptions {  }
      _ -> Left "Unrecognized FoldingRangeOptions value"

instance FromJSON DeclarationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationOptions {  }
      _ -> Left "Unrecognized DeclarationOptions value"

instance FromJSON Position where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLine <- lookupFromJSON "line" vs
           parsedCharacter <- lookupFromJSON "character" vs
           return
            Position { positionLine = parsedLine
                     , positionCharacter = parsedCharacter }
      _ -> Left "Unrecognized Position value"

instance FromJSON SelectionRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeOptions {  }
      _ -> Left "Unrecognized SelectionRangeOptions value"

instance FromJSON CallHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyOptions {  }
      _ -> Left "Unrecognized CallHierarchyOptions value"

instance FromJSON SemanticTokensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLegend <- lookupFromJSON "legend" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           return
            SemanticTokensOptions { semanticTokensOptionsLegend = parsedLegend
                                  , semanticTokensOptionsRange = parsedRange
                                  , semanticTokensOptionsFull = parsedFull }
      _ -> Left "Unrecognized SemanticTokensOptions value"

instance FromJSON SemanticTokensEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedDeleteCount <- lookupFromJSON "deleteCount" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            SemanticTokensEdit { semanticTokensEditStart = parsedStart
                               , semanticTokensEditDeleteCount = parsedDeleteCount
                               , semanticTokensEditData = parsedData }
      _ -> Left "Unrecognized SemanticTokensEdit value"

instance FromJSON LinkedEditingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeOptions {  }
      _ -> Left "Unrecognized LinkedEditingRangeOptions value"

instance FromJSON FileCreate where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileCreate { fileCreateUri = parsedUri }
      _ -> Left "Unrecognized FileCreate value"

instance FromJSON TextDocumentEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            TextDocumentEdit { textDocumentEditTextDocument = parsedTextDocument
                             , textDocumentEditEdits = parsedEdits }
      _ -> Left "Unrecognized TextDocumentEdit value"

instance FromJSON CreateFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            CreateFile { createFileKind = parsedKind
                       , createFileUri = parsedUri
                       , createFileOptions = parsedOptions }
      _ -> Left "Unrecognized CreateFile value"

instance FromJSON RenameFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            RenameFile { renameFileKind = parsedKind
                       , renameFileOldUri = parsedOldUri
                       , renameFileNewUri = parsedNewUri
                       , renameFileOptions = parsedOptions }
      _ -> Left "Unrecognized RenameFile value"

instance FromJSON DeleteFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            DeleteFile { deleteFileKind = parsedKind
                       , deleteFileUri = parsedUri
                       , deleteFileOptions = parsedOptions }
      _ -> Left "Unrecognized DeleteFile value"

instance FromJSON ChangeAnnotation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedNeedsConfirmation <- lookupMaybeFromJSON "needsConfirmation"
                                       vs
           parsedDescription <- lookupMaybeFromJSON "description" vs
           return
            ChangeAnnotation { changeAnnotationLabel = parsedLabel
                             , changeAnnotationNeedsConfirmation = parsedNeedsConfirmation
                             , changeAnnotationDescription = parsedDescription }
      _ -> Left "Unrecognized ChangeAnnotation value"

instance FromJSON FileOperationFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            FileOperationFilter { fileOperationFilterScheme = parsedScheme
                                , fileOperationFilterPattern = parsedPattern }
      _ -> Left "Unrecognized FileOperationFilter value"

instance FromJSON FileRename where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           return
            FileRename { fileRenameOldUri = parsedOldUri
                       , fileRenameNewUri = parsedNewUri }
      _ -> Left "Unrecognized FileRename value"

instance FromJSON FileDelete where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileDelete { fileDeleteUri = parsedUri }
      _ -> Left "Unrecognized FileDelete value"

instance FromJSON MonikerOptions where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerOptions {  }
      _ -> Left "Unrecognized MonikerOptions value"

instance FromJSON TypeHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyOptions {  }
      _ -> Left "Unrecognized TypeHierarchyOptions value"

instance FromJSON InlineValueContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrameId <- lookupFromJSON "frameId" vs
           parsedStoppedLocation <- lookupFromJSON "stoppedLocation" vs
           return
            InlineValueContext { inlineValueContextFrameId = parsedFrameId
                               , inlineValueContextStoppedLocation = parsedStoppedLocation }
      _ -> Left "Unrecognized InlineValueContext value"

instance FromJSON InlineValueText where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedText <- lookupFromJSON "text" vs
           return
            InlineValueText { inlineValueTextRange = parsedRange
                            , inlineValueTextText = parsedText }
      _ -> Left "Unrecognized InlineValueText value"

instance FromJSON InlineValueVariableLookup where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedVariableName <- lookupMaybeFromJSON "variableName" vs
           parsedCaseSensitiveLookup <- lookupFromJSON "caseSensitiveLookup"
                                         vs
           return
            InlineValueVariableLookup { inlineValueVariableLookupRange = parsedRange
                                      , inlineValueVariableLookupVariableName = parsedVariableName
                                      , inlineValueVariableLookupCaseSensitiveLookup = parsedCaseSensitiveLookup }
      _ -> Left "Unrecognized InlineValueVariableLookup value"

instance FromJSON InlineValueEvaluatableExpression where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedExpression <- lookupMaybeFromJSON "expression" vs
           return
            InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange = parsedRange
                                             , inlineValueEvaluatableExpressionExpression = parsedExpression }
      _ -> Left "Unrecognized InlineValueEvaluatableExpression value"

instance FromJSON InlineValueOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueOptions {  }
      _ -> Left "Unrecognized InlineValueOptions value"

instance FromJSON InlayHintLabelPart where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValue <- lookupFromJSON "value" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedLocation <- lookupMaybeFromJSON "location" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           return
            InlayHintLabelPart { inlayHintLabelPartValue = parsedValue
                               , inlayHintLabelPartTooltip = parsedTooltip
                               , inlayHintLabelPartLocation = parsedLocation
                               , inlayHintLabelPartCommand = parsedCommand }
      _ -> Left "Unrecognized InlayHintLabelPart value"

instance FromJSON MarkupContent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            MarkupContent { markupContentKind = parsedKind
                          , markupContentValue = parsedValue }
      _ -> Left "Unrecognized MarkupContent value"

instance FromJSON InlayHintOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            InlayHintOptions { inlayHintOptionsResolveProvider = parsedResolveProvider }
      _ -> Left "Unrecognized InlayHintOptions value"

instance FromJSON RelatedFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ -> Left "Unrecognized RelatedFullDocumentDiagnosticReport value"

instance FromJSON RelatedUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ -> Left "Unrecognized RelatedUnchangedDocumentDiagnosticReport value"

instance FromJSON FullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedItems <- lookupFromJSON "items" vs
           return
            FullDocumentDiagnosticReport { fullDocumentDiagnosticReportKind = parsedKind
                                         , fullDocumentDiagnosticReportResultId = parsedResultId
                                         , fullDocumentDiagnosticReportItems = parsedItems }
      _ -> Left "Unrecognized FullDocumentDiagnosticReport value"

instance FromJSON UnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupFromJSON "resultId" vs
           return
            UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind = parsedKind
                                              , unchangedDocumentDiagnosticReportResultId = parsedResultId }
      _ -> Left "Unrecognized UnchangedDocumentDiagnosticReport value"

instance FromJSON DiagnosticOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedInterFileDependencies <- lookupFromJSON
                                           "interFileDependencies"
                                           vs
           parsedWorkspaceDiagnostics <- lookupFromJSON "workspaceDiagnostics"
                                          vs
           return
            DiagnosticOptions { diagnosticOptionsIdentifier = parsedIdentifier
                              , diagnosticOptionsInterFileDependencies = parsedInterFileDependencies
                              , diagnosticOptionsWorkspaceDiagnostics = parsedWorkspaceDiagnostics }
      _ -> Left "Unrecognized DiagnosticOptions value"

instance FromJSON PreviousResultId where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            PreviousResultId { previousResultIdUri = parsedUri
                             , previousResultIdValue = parsedValue }
      _ -> Left "Unrecognized PreviousResultId value"

instance FromJSON NotebookDocument where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedNotebookType <- lookupFromJSON "notebookType" vs
           parsedVersion <- lookupFromJSON "version" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedCells <- lookupFromJSON "cells" vs
           return
            NotebookDocument { notebookDocumentUri = parsedUri
                             , notebookDocumentNotebookType = parsedNotebookType
                             , notebookDocumentVersion = parsedVersion
                             , notebookDocumentMetadata = parsedMetadata
                             , notebookDocumentCells = parsedCells }
      _ -> Left "Unrecognized NotebookDocument value"

instance FromJSON TextDocumentItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedLanguageId <- lookupFromJSON "languageId" vs
           parsedVersion <- lookupFromJSON "version" vs
           parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentItem { textDocumentItemUri = parsedUri
                             , textDocumentItemLanguageId = parsedLanguageId
                             , textDocumentItemVersion = parsedVersion
                             , textDocumentItemText = parsedText }
      _ -> Left "Unrecognized TextDocumentItem value"

instance FromJSON VersionedNotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           parsedUri <- lookupFromJSON "uri" vs
           return
            VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion = parsedVersion
                                                , versionedNotebookDocumentIdentifierUri = parsedUri }
      _ -> Left "Unrecognized VersionedNotebookDocumentIdentifier value"

instance FromJSON NotebookDocumentChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata = parsedMetadata
                                        , notebookDocumentChangeEventCells = parsedCells }
      _ -> Left "Unrecognized NotebookDocumentChangeEvent value"

instance FromJSON NotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            NotebookDocumentIdentifier { notebookDocumentIdentifierUri = parsedUri }
      _ -> Left "Unrecognized NotebookDocumentIdentifier value"

instance FromJSON Registration where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           parsedMethod <- lookupFromJSON "method" vs
           parsedRegisterOptions <- lookupMaybeFromJSON "registerOptions" vs
           return
            Registration { registrationId = parsedId
                         , registrationMethod = parsedMethod
                         , registrationRegisterOptions = parsedRegisterOptions }
      _ -> Left "Unrecognized Registration value"

instance FromJSON Unregistration where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           parsedMethod <- lookupFromJSON "method" vs
           return
            Unregistration { unregistrationId = parsedId
                           , unregistrationMethod = parsedMethod }
      _ -> Left "Unrecognized Unregistration value"

instance FromJSON BaseInitializeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProcessId <- lookupFromJSON "processId" vs
           parsedClientInfo <- lookupMaybeFromJSON "clientInfo" vs
           parsedLocale <- lookupMaybeFromJSON "locale" vs
           parsedRootPath <- lookupMaybeFromJSON "rootPath" vs
           parsedRootUri <- lookupFromJSON "rootUri" vs
           parsedCapabilities <- lookupFromJSON "capabilities" vs
           parsedInitializationOptions <- lookupMaybeFromJSON
                                           "initializationOptions"
                                           vs
           parsedTrace <- lookupMaybeFromJSON "trace" vs
           return
            BaseInitializeParams { baseInitializeParamsProcessId = parsedProcessId
                                 , baseInitializeParamsClientInfo = parsedClientInfo
                                 , baseInitializeParamsLocale = parsedLocale
                                 , baseInitializeParamsRootPath = parsedRootPath
                                 , baseInitializeParamsRootUri = parsedRootUri
                                 , baseInitializeParamsCapabilities = parsedCapabilities
                                 , baseInitializeParamsInitializationOptions = parsedInitializationOptions
                                 , baseInitializeParamsTrace = parsedTrace }
      _ -> Left "Unrecognized BaseInitializeParams value"

instance FromJSON WorkspaceFoldersInitializeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           return
            WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders = parsedWorkspaceFolders }
      _ -> Left "Unrecognized WorkspaceFoldersInitializeParams value"

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
                               , serverCapabilitiesWorkspace = parsedWorkspace
                               , serverCapabilitiesExperimental = parsedExperimental }
      _ -> Left "Unrecognized ServerCapabilities value"

instance FromJSON VersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion = parsedVersion }
      _ -> Left "Unrecognized VersionedTextDocumentIdentifier value"

instance FromJSON SaveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeText <- lookupMaybeFromJSON "includeText" vs
           return SaveOptions { saveOptionsIncludeText = parsedIncludeText }
      _ -> Left "Unrecognized SaveOptions value"

instance FromJSON FileEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedType <- lookupFromJSON "type" vs
           return
            FileEvent { fileEventUri = parsedUri, fileEventType = parsedType }
      _ -> Left "Unrecognized FileEvent value"

instance FromJSON FileSystemWatcher where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGlobPattern <- lookupFromJSON "globPattern" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            FileSystemWatcher { fileSystemWatcherGlobPattern = parsedGlobPattern
                              , fileSystemWatcherKind = parsedKind }
      _ -> Left "Unrecognized FileSystemWatcher value"

instance FromJSON Diagnostic where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedSeverity <- lookupMaybeFromJSON "severity" vs
           parsedCode <- lookupMaybeFromJSON "code" vs
           parsedCodeDescription <- lookupMaybeFromJSON "codeDescription" vs
           parsedSource <- lookupMaybeFromJSON "source" vs
           parsedMessage <- lookupFromJSON "message" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            Diagnostic { diagnosticRange = parsedRange
                       , diagnosticSeverity = parsedSeverity
                       , diagnosticCode = parsedCode
                       , diagnosticCodeDescription = parsedCodeDescription
                       , diagnosticSource = parsedSource
                       , diagnosticMessage = parsedMessage
                       , diagnosticTags = parsedTags
                       , diagnosticRelatedInformation = parsedRelatedInformation
                       , diagnosticData = parsedData }
      _ -> Left "Unrecognized Diagnostic value"

instance FromJSON CompletionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedTriggerCharacter <- lookupMaybeFromJSON "triggerCharacter" vs
           return
            CompletionContext { completionContextTriggerKind = parsedTriggerKind
                              , completionContextTriggerCharacter = parsedTriggerCharacter }
      _ -> Left "Unrecognized CompletionContext value"

instance FromJSON CompletionItemLabelDetails where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedDescription <- lookupMaybeFromJSON "description" vs
           return
            CompletionItemLabelDetails { completionItemLabelDetailsDetail = parsedDetail
                                       , completionItemLabelDetailsDescription = parsedDescription }
      _ -> Left "Unrecognized CompletionItemLabelDetails value"

instance FromJSON InsertReplaceEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNewText <- lookupFromJSON "newText" vs
           parsedInsert <- lookupFromJSON "insert" vs
           parsedReplace <- lookupFromJSON "replace" vs
           return
            InsertReplaceEdit { insertReplaceEditNewText = parsedNewText
                              , insertReplaceEditInsert = parsedInsert
                              , insertReplaceEditReplace = parsedReplace }
      _ -> Left "Unrecognized InsertReplaceEdit value"

instance FromJSON CompletionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedAllCommitCharacters <- lookupMaybeFromJSON
                                         "allCommitCharacters"
                                         vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           return
            CompletionOptions { completionOptionsTriggerCharacters = parsedTriggerCharacters
                              , completionOptionsAllCommitCharacters = parsedAllCommitCharacters
                              , completionOptionsResolveProvider = parsedResolveProvider
                              , completionOptionsCompletionItem = parsedCompletionItem }
      _ -> Left "Unrecognized CompletionOptions value"

instance FromJSON HoverOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverOptions {  }
      _ -> Left "Unrecognized HoverOptions value"

instance FromJSON SignatureHelpContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedTriggerCharacter <- lookupMaybeFromJSON "triggerCharacter" vs
           parsedIsRetrigger <- lookupFromJSON "isRetrigger" vs
           parsedActiveSignatureHelp <- lookupMaybeFromJSON
                                         "activeSignatureHelp"
                                         vs
           return
            SignatureHelpContext { signatureHelpContextTriggerKind = parsedTriggerKind
                                 , signatureHelpContextTriggerCharacter = parsedTriggerCharacter
                                 , signatureHelpContextIsRetrigger = parsedIsRetrigger
                                 , signatureHelpContextActiveSignatureHelp = parsedActiveSignatureHelp }
      _ -> Left "Unrecognized SignatureHelpContext value"

instance FromJSON SignatureInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedParameters <- lookupMaybeFromJSON "parameters" vs
           parsedActiveParameter <- lookupMaybeFromJSON "activeParameter" vs
           return
            SignatureInformation { signatureInformationLabel = parsedLabel
                                 , signatureInformationDocumentation = parsedDocumentation
                                 , signatureInformationParameters = parsedParameters
                                 , signatureInformationActiveParameter = parsedActiveParameter }
      _ -> Left "Unrecognized SignatureInformation value"

instance FromJSON SignatureHelpOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedRetriggerCharacters <- lookupMaybeFromJSON
                                         "retriggerCharacters"
                                         vs
           return
            SignatureHelpOptions { signatureHelpOptionsTriggerCharacters = parsedTriggerCharacters
                                 , signatureHelpOptionsRetriggerCharacters = parsedRetriggerCharacters }
      _ -> Left "Unrecognized SignatureHelpOptions value"

instance FromJSON DefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionOptions {  }
      _ -> Left "Unrecognized DefinitionOptions value"

instance FromJSON ReferenceContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeDeclaration <- lookupFromJSON "includeDeclaration" vs
           return
            ReferenceContext { referenceContextIncludeDeclaration = parsedIncludeDeclaration }
      _ -> Left "Unrecognized ReferenceContext value"

instance FromJSON ReferenceOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ReferenceOptions {  }
      _ -> Left "Unrecognized ReferenceOptions value"

instance FromJSON DocumentHighlightOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightOptions {  }
      _ -> Left "Unrecognized DocumentHighlightOptions value"

instance FromJSON BaseSymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedKind <- lookupFromJSON "kind" vs
           parsedTags <- lookupMaybeFromJSON "tags" vs
           parsedContainerName <- lookupMaybeFromJSON "containerName" vs
           return
            BaseSymbolInformation { baseSymbolInformationName = parsedName
                                  , baseSymbolInformationKind = parsedKind
                                  , baseSymbolInformationTags = parsedTags
                                  , baseSymbolInformationContainerName = parsedContainerName }
      _ -> Left "Unrecognized BaseSymbolInformation value"

instance FromJSON DocumentSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           return
            DocumentSymbolOptions { documentSymbolOptionsLabel = parsedLabel }
      _ -> Left "Unrecognized DocumentSymbolOptions value"

instance FromJSON CodeActionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDiagnostics <- lookupFromJSON "diagnostics" vs
           parsedOnly <- lookupMaybeFromJSON "only" vs
           parsedTriggerKind <- lookupMaybeFromJSON "triggerKind" vs
           return
            CodeActionContext { codeActionContextDiagnostics = parsedDiagnostics
                              , codeActionContextOnly = parsedOnly
                              , codeActionContextTriggerKind = parsedTriggerKind }
      _ -> Left "Unrecognized CodeActionContext value"

instance FromJSON CodeActionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCodeActionKinds <- lookupMaybeFromJSON "codeActionKinds" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeActionOptions { codeActionOptionsCodeActionKinds = parsedCodeActionKinds
                              , codeActionOptionsResolveProvider = parsedResolveProvider }
      _ -> Left "Unrecognized CodeActionOptions value"

instance FromJSON WorkspaceSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider = parsedResolveProvider }
      _ -> Left "Unrecognized WorkspaceSymbolOptions value"

instance FromJSON CodeLensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeLensOptions { codeLensOptionsResolveProvider = parsedResolveProvider }
      _ -> Left "Unrecognized CodeLensOptions value"

instance FromJSON DocumentLinkOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            DocumentLinkOptions { documentLinkOptionsResolveProvider = parsedResolveProvider }
      _ -> Left "Unrecognized DocumentLinkOptions value"

instance FromJSON FormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTabSize <- lookupFromJSON "tabSize" vs
           parsedInsertSpaces <- lookupFromJSON "insertSpaces" vs
           parsedTrimTrailingWhitespace <- lookupMaybeFromJSON
                                            "trimTrailingWhitespace"
                                            vs
           parsedInsertFinalNewline <- lookupMaybeFromJSON
                                        "insertFinalNewline"
                                        vs
           parsedTrimFinalNewlines <- lookupMaybeFromJSON "trimFinalNewlines"
                                       vs
           return
            FormattingOptions { formattingOptionsTabSize = parsedTabSize
                              , formattingOptionsInsertSpaces = parsedInsertSpaces
                              , formattingOptionsTrimTrailingWhitespace = parsedTrimTrailingWhitespace
                              , formattingOptionsInsertFinalNewline = parsedInsertFinalNewline
                              , formattingOptionsTrimFinalNewlines = parsedTrimFinalNewlines }
      _ -> Left "Unrecognized FormattingOptions value"

instance FromJSON DocumentFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentFormattingOptions {  }
      _ -> Left "Unrecognized DocumentFormattingOptions value"

instance FromJSON DocumentRangeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentRangeFormattingOptions {  }
      _ -> Left "Unrecognized DocumentRangeFormattingOptions value"

instance FromJSON DocumentOnTypeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFirstTriggerCharacter <- lookupFromJSON
                                           "firstTriggerCharacter"
                                           vs
           parsedMoreTriggerCharacter <- lookupMaybeFromJSON
                                          "moreTriggerCharacter"
                                          vs
           return
            DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter = parsedFirstTriggerCharacter
                                            , documentOnTypeFormattingOptionsMoreTriggerCharacter = parsedMoreTriggerCharacter }
      _ -> Left "Unrecognized DocumentOnTypeFormattingOptions value"

instance FromJSON RenameOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPrepareProvider <- lookupMaybeFromJSON "prepareProvider" vs
           return
            RenameOptions { renameOptionsPrepareProvider = parsedPrepareProvider }
      _ -> Left "Unrecognized RenameOptions value"

instance FromJSON ExecuteCommandOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommands <- lookupFromJSON "commands" vs
           return
            ExecuteCommandOptions { executeCommandOptionsCommands = parsedCommands }
      _ -> Left "Unrecognized ExecuteCommandOptions value"

instance FromJSON SemanticTokensLegend where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTokenTypes <- lookupFromJSON "tokenTypes" vs
           parsedTokenModifiers <- lookupFromJSON "tokenModifiers" vs
           return
            SemanticTokensLegend { semanticTokensLegendTokenTypes = parsedTokenTypes
                                 , semanticTokensLegendTokenModifiers = parsedTokenModifiers }
      _ -> Left "Unrecognized SemanticTokensLegend value"

instance FromJSON OptionalVersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion = parsedVersion }
      _ -> Left "Unrecognized OptionalVersionedTextDocumentIdentifier value"

instance FromJSON AnnotatedTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAnnotationId <- lookupFromJSON "annotationId" vs
           return
            AnnotatedTextEdit { annotatedTextEditAnnotationId = parsedAnnotationId }
      _ -> Left "Unrecognized AnnotatedTextEdit value"

instance FromJSON ResourceOperation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           return
            ResourceOperation { resourceOperationKind = parsedKind
                              , resourceOperationAnnotationId = parsedAnnotationId }
      _ -> Left "Unrecognized ResourceOperation value"

instance FromJSON CreateFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            CreateFileOptions { createFileOptionsOverwrite = parsedOverwrite
                              , createFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left "Unrecognized CreateFileOptions value"

instance FromJSON RenameFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            RenameFileOptions { renameFileOptionsOverwrite = parsedOverwrite
                              , renameFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left "Unrecognized RenameFileOptions value"

instance FromJSON DeleteFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRecursive <- lookupMaybeFromJSON "recursive" vs
           parsedIgnoreIfNotExists <- lookupMaybeFromJSON "ignoreIfNotExists"
                                       vs
           return
            DeleteFileOptions { deleteFileOptionsRecursive = parsedRecursive
                              , deleteFileOptionsIgnoreIfNotExists = parsedIgnoreIfNotExists }
      _ -> Left "Unrecognized DeleteFileOptions value"

instance FromJSON FileOperationPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGlob <- lookupFromJSON "glob" vs
           parsedMatches <- lookupMaybeFromJSON "matches" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            FileOperationPattern { fileOperationPatternGlob = parsedGlob
                                 , fileOperationPatternMatches = parsedMatches
                                 , fileOperationPatternOptions = parsedOptions }
      _ -> Left "Unrecognized FileOperationPattern value"

instance FromJSON WorkspaceFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportUri = parsedUri
                                                  , workspaceFullDocumentDiagnosticReportVersion = parsedVersion }
      _ -> Left "Unrecognized WorkspaceFullDocumentDiagnosticReport value"

instance FromJSON WorkspaceUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            WorkspaceUnchangedDocumentDiagnosticReport { workspaceUnchangedDocumentDiagnosticReportUri = parsedUri
                                                       , workspaceUnchangedDocumentDiagnosticReportVersion = parsedVersion }
      _ ->
        Left "Unrecognized WorkspaceUnchangedDocumentDiagnosticReport value"

instance FromJSON LSPObject where
  fromJSON j =
    case j of
      JObject vs -> do return LSPObject {  }
      _ -> Left "Unrecognized LSPObject value"

instance FromJSON NotebookCell where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedDocument <- lookupFromJSON "document" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedExecutionSummary <- lookupMaybeFromJSON "executionSummary" vs
           return
            NotebookCell { notebookCellKind = parsedKind
                         , notebookCellDocument = parsedDocument
                         , notebookCellMetadata = parsedMetadata
                         , notebookCellExecutionSummary = parsedExecutionSummary }
      _ -> Left "Unrecognized NotebookCell value"

instance FromJSON NotebookCellArrayChange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedDeleteCount <- lookupFromJSON "deleteCount" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookCellArrayChange { notebookCellArrayChangeStart = parsedStart
                                    , notebookCellArrayChangeDeleteCount = parsedDeleteCount
                                    , notebookCellArrayChangeCells = parsedCells }
      _ -> Left "Unrecognized NotebookCellArrayChange value"

instance FromJSON ClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspace <- lookupMaybeFromJSON "workspace" vs
           parsedTextDocument <- lookupMaybeFromJSON "textDocument" vs
           parsedNotebookDocument <- lookupMaybeFromJSON "notebookDocument" vs
           parsedWindow <- lookupMaybeFromJSON "window" vs
           parsedGeneral <- lookupMaybeFromJSON "general" vs
           parsedExperimental <- lookupMaybeFromJSON "experimental" vs
           return
            ClientCapabilities { clientCapabilitiesWorkspace = parsedWorkspace
                               , clientCapabilitiesTextDocument = parsedTextDocument
                               , clientCapabilitiesNotebookDocument = parsedNotebookDocument
                               , clientCapabilitiesWindow = parsedWindow
                               , clientCapabilitiesGeneral = parsedGeneral
                               , clientCapabilitiesExperimental = parsedExperimental }
      _ -> Left "Unrecognized ClientCapabilities value"

instance FromJSON TextDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOpenClose <- lookupMaybeFromJSON "openClose" vs
           parsedChange <- lookupMaybeFromJSON "change" vs
           parsedWillSave <- lookupMaybeFromJSON "willSave" vs
           parsedWillSaveWaitUntil <- lookupMaybeFromJSON "willSaveWaitUntil"
                                       vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           return
            TextDocumentSyncOptions { textDocumentSyncOptionsOpenClose = parsedOpenClose
                                    , textDocumentSyncOptionsChange = parsedChange
                                    , textDocumentSyncOptionsWillSave = parsedWillSave
                                    , textDocumentSyncOptionsWillSaveWaitUntil = parsedWillSaveWaitUntil
                                    , textDocumentSyncOptionsSave = parsedSave }
      _ -> Left "Unrecognized TextDocumentSyncOptions value"

instance FromJSON NotebookDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookSelector <- lookupFromJSON "notebookSelector" vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           return
            NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector = parsedNotebookSelector
                                        , notebookDocumentSyncOptionsSave = parsedSave }
      _ -> Left "Unrecognized NotebookDocumentSyncOptions value"

instance FromJSON NotebookDocumentSyncRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return NotebookDocumentSyncRegistrationOptions {  }
      _ -> Left "Unrecognized NotebookDocumentSyncRegistrationOptions value"

instance FromJSON WorkspaceFoldersServerCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSupported <- lookupMaybeFromJSON "supported" vs
           parsedChangeNotifications <- lookupMaybeFromJSON
                                         "changeNotifications"
                                         vs
           return
            WorkspaceFoldersServerCapabilities { workspaceFoldersServerCapabilitiesSupported = parsedSupported
                                               , workspaceFoldersServerCapabilitiesChangeNotifications = parsedChangeNotifications }
      _ -> Left "Unrecognized WorkspaceFoldersServerCapabilities value"

instance FromJSON FileOperationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDidCreate <- lookupMaybeFromJSON "didCreate" vs
           parsedWillCreate <- lookupMaybeFromJSON "willCreate" vs
           parsedDidRename <- lookupMaybeFromJSON "didRename" vs
           parsedWillRename <- lookupMaybeFromJSON "willRename" vs
           parsedDidDelete <- lookupMaybeFromJSON "didDelete" vs
           parsedWillDelete <- lookupMaybeFromJSON "willDelete" vs
           return
            FileOperationOptions { fileOperationOptionsDidCreate = parsedDidCreate
                                 , fileOperationOptionsWillCreate = parsedWillCreate
                                 , fileOperationOptionsDidRename = parsedDidRename
                                 , fileOperationOptionsWillRename = parsedWillRename
                                 , fileOperationOptionsDidDelete = parsedDidDelete
                                 , fileOperationOptionsWillDelete = parsedWillDelete }
      _ -> Left "Unrecognized FileOperationOptions value"

instance FromJSON CodeDescription where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedHref <- lookupFromJSON "href" vs
           return CodeDescription { codeDescriptionHref = parsedHref }
      _ -> Left "Unrecognized CodeDescription value"

instance FromJSON DiagnosticRelatedInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLocation <- lookupFromJSON "location" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            DiagnosticRelatedInformation { diagnosticRelatedInformationLocation = parsedLocation
                                         , diagnosticRelatedInformationMessage = parsedMessage }
      _ -> Left "Unrecognized DiagnosticRelatedInformation value"

instance FromJSON ParameterInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           return
            ParameterInformation { parameterInformationLabel = parsedLabel
                                 , parameterInformationDocumentation = parsedDocumentation }
      _ -> Left "Unrecognized ParameterInformation value"

instance FromJSON NotebookCellTextDocumentFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupFromJSON "notebook" vs
           parsedLanguage <- lookupMaybeFromJSON "language" vs
           return
            NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook = parsedNotebook
                                           , notebookCellTextDocumentFilterLanguage = parsedLanguage }
      _ -> Left "Unrecognized NotebookCellTextDocumentFilter value"

instance FromJSON FileOperationPatternOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIgnoreCase <- lookupMaybeFromJSON "ignoreCase" vs
           return
            FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase = parsedIgnoreCase }
      _ -> Left "Unrecognized FileOperationPatternOptions value"

instance FromJSON ExecutionSummary where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedExecutionOrder <- lookupFromJSON "executionOrder" vs
           parsedSuccess <- lookupMaybeFromJSON "success" vs
           return
            ExecutionSummary { executionSummaryExecutionOrder = parsedExecutionOrder
                             , executionSummarySuccess = parsedSuccess }
      _ -> Left "Unrecognized ExecutionSummary value"

instance FromJSON WorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedApplyEdit <- lookupMaybeFromJSON "applyEdit" vs
           parsedWorkspaceEdit <- lookupMaybeFromJSON "workspaceEdit" vs
           parsedDidChangeConfiguration <- lookupMaybeFromJSON
                                            "didChangeConfiguration"
                                            vs
           parsedDidChangeWatchedFiles <- lookupMaybeFromJSON
                                           "didChangeWatchedFiles"
                                           vs
           parsedSymbol <- lookupMaybeFromJSON "symbol" vs
           parsedExecuteCommand <- lookupMaybeFromJSON "executeCommand" vs
           parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           parsedConfiguration <- lookupMaybeFromJSON "configuration" vs
           parsedSemanticTokens <- lookupMaybeFromJSON "semanticTokens" vs
           parsedCodeLens <- lookupMaybeFromJSON "codeLens" vs
           parsedFileOperations <- lookupMaybeFromJSON "fileOperations" vs
           parsedInlineValue <- lookupMaybeFromJSON "inlineValue" vs
           parsedInlayHint <- lookupMaybeFromJSON "inlayHint" vs
           parsedDiagnostics <- lookupMaybeFromJSON "diagnostics" vs
           return
            WorkspaceClientCapabilities { workspaceClientCapabilitiesApplyEdit = parsedApplyEdit
                                        , workspaceClientCapabilitiesWorkspaceEdit = parsedWorkspaceEdit
                                        , workspaceClientCapabilitiesDidChangeConfiguration = parsedDidChangeConfiguration
                                        , workspaceClientCapabilitiesDidChangeWatchedFiles = parsedDidChangeWatchedFiles
                                        , workspaceClientCapabilitiesSymbol = parsedSymbol
                                        , workspaceClientCapabilitiesExecuteCommand = parsedExecuteCommand
                                        , workspaceClientCapabilitiesWorkspaceFolders = parsedWorkspaceFolders
                                        , workspaceClientCapabilitiesConfiguration = parsedConfiguration
                                        , workspaceClientCapabilitiesSemanticTokens = parsedSemanticTokens
                                        , workspaceClientCapabilitiesCodeLens = parsedCodeLens
                                        , workspaceClientCapabilitiesFileOperations = parsedFileOperations
                                        , workspaceClientCapabilitiesInlineValue = parsedInlineValue
                                        , workspaceClientCapabilitiesInlayHint = parsedInlayHint
                                        , workspaceClientCapabilitiesDiagnostics = parsedDiagnostics }
      _ -> Left "Unrecognized WorkspaceClientCapabilities value"

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
                                           , textDocumentClientCapabilitiesDiagnostic = parsedDiagnostic }
      _ -> Left "Unrecognized TextDocumentClientCapabilities value"

instance FromJSON NotebookDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSynchronization <- lookupFromJSON "synchronization" vs
           return
            NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization = parsedSynchronization }
      _ -> Left "Unrecognized NotebookDocumentClientCapabilities value"

instance FromJSON WindowClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedShowMessage <- lookupMaybeFromJSON "showMessage" vs
           parsedShowDocument <- lookupMaybeFromJSON "showDocument" vs
           return
            WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress = parsedWorkDoneProgress
                                     , windowClientCapabilitiesShowMessage = parsedShowMessage
                                     , windowClientCapabilitiesShowDocument = parsedShowDocument }
      _ -> Left "Unrecognized WindowClientCapabilities value"

instance FromJSON GeneralClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStaleRequestSupport <- lookupMaybeFromJSON
                                         "staleRequestSupport"
                                         vs
           parsedRegularExpressions <- lookupMaybeFromJSON
                                        "regularExpressions"
                                        vs
           parsedMarkdown <- lookupMaybeFromJSON "markdown" vs
           parsedPositionEncodings <- lookupMaybeFromJSON "positionEncodings"
                                       vs
           return
            GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport = parsedStaleRequestSupport
                                      , generalClientCapabilitiesRegularExpressions = parsedRegularExpressions
                                      , generalClientCapabilitiesMarkdown = parsedMarkdown
                                      , generalClientCapabilitiesPositionEncodings = parsedPositionEncodings }
      _ -> Left "Unrecognized GeneralClientCapabilities value"

instance FromJSON RelativePattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedBaseUri <- lookupFromJSON "baseUri" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            RelativePattern { relativePatternBaseUri = parsedBaseUri
                            , relativePatternPattern = parsedPattern }
      _ -> Left "Unrecognized RelativePattern value"

instance FromJSON WorkspaceEditClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentChanges <- lookupMaybeFromJSON "documentChanges" vs
           parsedResourceOperations <- lookupMaybeFromJSON
                                        "resourceOperations"
                                        vs
           parsedFailureHandling <- lookupMaybeFromJSON "failureHandling" vs
           parsedNormalizesLineEndings <- lookupMaybeFromJSON
                                           "normalizesLineEndings"
                                           vs
           parsedChangeAnnotationSupport <- lookupMaybeFromJSON
                                             "changeAnnotationSupport"
                                             vs
           return
            WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges = parsedDocumentChanges
                                            , workspaceEditClientCapabilitiesResourceOperations = parsedResourceOperations
                                            , workspaceEditClientCapabilitiesFailureHandling = parsedFailureHandling
                                            , workspaceEditClientCapabilitiesNormalizesLineEndings = parsedNormalizesLineEndings
                                            , workspaceEditClientCapabilitiesChangeAnnotationSupport = parsedChangeAnnotationSupport }
      _ -> Left "Unrecognized WorkspaceEditClientCapabilities value"

instance FromJSON DidChangeConfigurationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized DidChangeConfigurationClientCapabilities value"

instance FromJSON DidChangeWatchedFilesClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRelativePatternSupport <- lookupMaybeFromJSON
                                            "relativePatternSupport"
                                            vs
           return
            DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                    , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport = parsedRelativePatternSupport }
      _ -> Left "Unrecognized DidChangeWatchedFilesClientCapabilities value"

instance FromJSON WorkspaceSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSymbolKind <- lookupMaybeFromJSON "symbolKind" vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                              , workspaceSymbolClientCapabilitiesSymbolKind = parsedSymbolKind
                                              , workspaceSymbolClientCapabilitiesTagSupport = parsedTagSupport
                                              , workspaceSymbolClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ -> Left "Unrecognized WorkspaceSymbolClientCapabilities value"

instance FromJSON ExecuteCommandClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized ExecuteCommandClientCapabilities value"

instance FromJSON SemanticTokensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ -> Left "Unrecognized SemanticTokensWorkspaceClientCapabilities value"

instance FromJSON CodeLensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ -> Left "Unrecognized CodeLensWorkspaceClientCapabilities value"

instance FromJSON FileOperationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedDidCreate <- lookupMaybeFromJSON "didCreate" vs
           parsedWillCreate <- lookupMaybeFromJSON "willCreate" vs
           parsedDidRename <- lookupMaybeFromJSON "didRename" vs
           parsedWillRename <- lookupMaybeFromJSON "willRename" vs
           parsedDidDelete <- lookupMaybeFromJSON "didDelete" vs
           parsedWillDelete <- lookupMaybeFromJSON "willDelete" vs
           return
            FileOperationClientCapabilities { fileOperationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                            , fileOperationClientCapabilitiesDidCreate = parsedDidCreate
                                            , fileOperationClientCapabilitiesWillCreate = parsedWillCreate
                                            , fileOperationClientCapabilitiesDidRename = parsedDidRename
                                            , fileOperationClientCapabilitiesWillRename = parsedWillRename
                                            , fileOperationClientCapabilitiesDidDelete = parsedDidDelete
                                            , fileOperationClientCapabilitiesWillDelete = parsedWillDelete }
      _ -> Left "Unrecognized FileOperationClientCapabilities value"

instance FromJSON InlineValueWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ -> Left "Unrecognized InlineValueWorkspaceClientCapabilities value"

instance FromJSON InlayHintWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            InlayHintWorkspaceClientCapabilities { inlayHintWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ -> Left "Unrecognized InlayHintWorkspaceClientCapabilities value"

instance FromJSON DiagnosticWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ -> Left "Unrecognized DiagnosticWorkspaceClientCapabilities value"

instance FromJSON TextDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedWillSave <- lookupMaybeFromJSON "willSave" vs
           parsedWillSaveWaitUntil <- lookupMaybeFromJSON "willSaveWaitUntil"
                                       vs
           parsedDidSave <- lookupMaybeFromJSON "didSave" vs
           return
            TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                               , textDocumentSyncClientCapabilitiesWillSave = parsedWillSave
                                               , textDocumentSyncClientCapabilitiesWillSaveWaitUntil = parsedWillSaveWaitUntil
                                               , textDocumentSyncClientCapabilitiesDidSave = parsedDidSave }
      _ -> Left "Unrecognized TextDocumentSyncClientCapabilities value"

instance FromJSON CompletionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           parsedCompletionItemKind <- lookupMaybeFromJSON
                                        "completionItemKind"
                                        vs
           parsedInsertTextMode <- lookupMaybeFromJSON "insertTextMode" vs
           parsedContextSupport <- lookupMaybeFromJSON "contextSupport" vs
           parsedCompletionList <- lookupMaybeFromJSON "completionList" vs
           return
            CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , completionClientCapabilitiesCompletionItem = parsedCompletionItem
                                         , completionClientCapabilitiesCompletionItemKind = parsedCompletionItemKind
                                         , completionClientCapabilitiesInsertTextMode = parsedInsertTextMode
                                         , completionClientCapabilitiesContextSupport = parsedContextSupport
                                         , completionClientCapabilitiesCompletionList = parsedCompletionList }
      _ -> Left "Unrecognized CompletionClientCapabilities value"

instance FromJSON HoverClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedContentFormat <- lookupMaybeFromJSON "contentFormat" vs
           return
            HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                    , hoverClientCapabilitiesContentFormat = parsedContentFormat }
      _ -> Left "Unrecognized HoverClientCapabilities value"

instance FromJSON SignatureHelpClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSignatureInformation <- lookupMaybeFromJSON
                                          "signatureInformation"
                                          vs
           parsedContextSupport <- lookupMaybeFromJSON "contextSupport" vs
           return
            SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                            , signatureHelpClientCapabilitiesSignatureInformation = parsedSignatureInformation
                                            , signatureHelpClientCapabilitiesContextSupport = parsedContextSupport }
      _ -> Left "Unrecognized SignatureHelpClientCapabilities value"

instance FromJSON DeclarationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            DeclarationClientCapabilities { declarationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                          , declarationClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ -> Left "Unrecognized DeclarationClientCapabilities value"

instance FromJSON DefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            DefinitionClientCapabilities { definitionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , definitionClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ -> Left "Unrecognized DefinitionClientCapabilities value"

instance FromJSON TypeDefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            TypeDefinitionClientCapabilities { typeDefinitionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , typeDefinitionClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ -> Left "Unrecognized TypeDefinitionClientCapabilities value"

instance FromJSON ImplementationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , implementationClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ -> Left "Unrecognized ImplementationClientCapabilities value"

instance FromJSON ReferenceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized ReferenceClientCapabilities value"

instance FromJSON DocumentHighlightClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized DocumentHighlightClientCapabilities value"

instance FromJSON DocumentSymbolClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedSymbolKind <- lookupMaybeFromJSON "symbolKind" vs
           parsedHierarchicalDocumentSymbolSupport <- lookupMaybeFromJSON
                                                       "hierarchicalDocumentSymbolSupport"
                                                       vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedLabelSupport <- lookupMaybeFromJSON "labelSupport" vs
           return
            DocumentSymbolClientCapabilities { documentSymbolClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , documentSymbolClientCapabilitiesSymbolKind = parsedSymbolKind
                                             , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport = parsedHierarchicalDocumentSymbolSupport
                                             , documentSymbolClientCapabilitiesTagSupport = parsedTagSupport
                                             , documentSymbolClientCapabilitiesLabelSupport = parsedLabelSupport }
      _ -> Left "Unrecognized DocumentSymbolClientCapabilities value"

instance FromJSON CodeActionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedCodeActionLiteralSupport <- lookupMaybeFromJSON
                                              "codeActionLiteralSupport"
                                              vs
           parsedIsPreferredSupport <- lookupMaybeFromJSON
                                        "isPreferredSupport"
                                        vs
           parsedDisabledSupport <- lookupMaybeFromJSON "disabledSupport" vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           parsedHonorsChangeAnnotations <- lookupMaybeFromJSON
                                             "honorsChangeAnnotations"
                                             vs
           return
            CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , codeActionClientCapabilitiesCodeActionLiteralSupport = parsedCodeActionLiteralSupport
                                         , codeActionClientCapabilitiesIsPreferredSupport = parsedIsPreferredSupport
                                         , codeActionClientCapabilitiesDisabledSupport = parsedDisabledSupport
                                         , codeActionClientCapabilitiesDataSupport = parsedDataSupport
                                         , codeActionClientCapabilitiesResolveSupport = parsedResolveSupport
                                         , codeActionClientCapabilitiesHonorsChangeAnnotations = parsedHonorsChangeAnnotations }
      _ -> Left "Unrecognized CodeActionClientCapabilities value"

instance FromJSON CodeLensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized CodeLensClientCapabilities value"

instance FromJSON DocumentLinkClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedTooltipSupport <- lookupMaybeFromJSON "tooltipSupport" vs
           return
            DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                           , documentLinkClientCapabilitiesTooltipSupport = parsedTooltipSupport }
      _ -> Left "Unrecognized DocumentLinkClientCapabilities value"

instance FromJSON DocumentColorClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized DocumentColorClientCapabilities value"

instance FromJSON DocumentFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized DocumentFormattingClientCapabilities value"

instance FromJSON DocumentRangeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized DocumentRangeFormattingClientCapabilities value"

instance FromJSON DocumentOnTypeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentOnTypeFormattingClientCapabilities { documentOnTypeFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left "Unrecognized DocumentOnTypeFormattingClientCapabilities value"

instance FromJSON RenameClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedPrepareSupport <- lookupMaybeFromJSON "prepareSupport" vs
           parsedPrepareSupportDefaultBehavior <- lookupMaybeFromJSON
                                                   "prepareSupportDefaultBehavior"
                                                   vs
           parsedHonorsChangeAnnotations <- lookupMaybeFromJSON
                                             "honorsChangeAnnotations"
                                             vs
           return
            RenameClientCapabilities { renameClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                     , renameClientCapabilitiesPrepareSupport = parsedPrepareSupport
                                     , renameClientCapabilitiesPrepareSupportDefaultBehavior = parsedPrepareSupportDefaultBehavior
                                     , renameClientCapabilitiesHonorsChangeAnnotations = parsedHonorsChangeAnnotations }
      _ -> Left "Unrecognized RenameClientCapabilities value"

instance FromJSON FoldingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRangeLimit <- lookupMaybeFromJSON "rangeLimit" vs
           parsedLineFoldingOnly <- lookupMaybeFromJSON "lineFoldingOnly" vs
           parsedFoldingRangeKind <- lookupMaybeFromJSON "foldingRangeKind" vs
           parsedFoldingRange <- lookupMaybeFromJSON "foldingRange" vs
           return
            FoldingRangeClientCapabilities { foldingRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                           , foldingRangeClientCapabilitiesRangeLimit = parsedRangeLimit
                                           , foldingRangeClientCapabilitiesLineFoldingOnly = parsedLineFoldingOnly
                                           , foldingRangeClientCapabilitiesFoldingRangeKind = parsedFoldingRangeKind
                                           , foldingRangeClientCapabilitiesFoldingRange = parsedFoldingRange }
      _ -> Left "Unrecognized FoldingRangeClientCapabilities value"

instance FromJSON SelectionRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized SelectionRangeClientCapabilities value"

instance FromJSON PublishDiagnosticsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedVersionSupport <- lookupMaybeFromJSON "versionSupport" vs
           parsedCodeDescriptionSupport <- lookupMaybeFromJSON
                                            "codeDescriptionSupport"
                                            vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           return
            PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesRelatedInformation = parsedRelatedInformation
                                                 , publishDiagnosticsClientCapabilitiesTagSupport = parsedTagSupport
                                                 , publishDiagnosticsClientCapabilitiesVersionSupport = parsedVersionSupport
                                                 , publishDiagnosticsClientCapabilitiesCodeDescriptionSupport = parsedCodeDescriptionSupport
                                                 , publishDiagnosticsClientCapabilitiesDataSupport = parsedDataSupport }
      _ -> Left "Unrecognized PublishDiagnosticsClientCapabilities value"

instance FromJSON CallHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized CallHierarchyClientCapabilities value"

instance FromJSON SemanticTokensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRequests <- lookupFromJSON "requests" vs
           parsedTokenTypes <- lookupFromJSON "tokenTypes" vs
           parsedTokenModifiers <- lookupFromJSON "tokenModifiers" vs
           parsedFormats <- lookupFromJSON "formats" vs
           parsedOverlappingTokenSupport <- lookupMaybeFromJSON
                                             "overlappingTokenSupport"
                                             vs
           parsedMultilineTokenSupport <- lookupMaybeFromJSON
                                           "multilineTokenSupport"
                                           vs
           parsedServerCancelSupport <- lookupMaybeFromJSON
                                         "serverCancelSupport"
                                         vs
           parsedAugmentsSyntaxTokens <- lookupMaybeFromJSON
                                          "augmentsSyntaxTokens"
                                          vs
           return
            SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , semanticTokensClientCapabilitiesRequests = parsedRequests
                                             , semanticTokensClientCapabilitiesTokenTypes = parsedTokenTypes
                                             , semanticTokensClientCapabilitiesTokenModifiers = parsedTokenModifiers
                                             , semanticTokensClientCapabilitiesFormats = parsedFormats
                                             , semanticTokensClientCapabilitiesOverlappingTokenSupport = parsedOverlappingTokenSupport
                                             , semanticTokensClientCapabilitiesMultilineTokenSupport = parsedMultilineTokenSupport
                                             , semanticTokensClientCapabilitiesServerCancelSupport = parsedServerCancelSupport
                                             , semanticTokensClientCapabilitiesAugmentsSyntaxTokens = parsedAugmentsSyntaxTokens }
      _ -> Left "Unrecognized SemanticTokensClientCapabilities value"

instance FromJSON LinkedEditingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized LinkedEditingRangeClientCapabilities value"

instance FromJSON MonikerClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized MonikerClientCapabilities value"

instance FromJSON TypeHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized TypeHierarchyClientCapabilities value"

instance FromJSON InlineValueClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left "Unrecognized InlineValueClientCapabilities value"

instance FromJSON InlayHintClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            InlayHintClientCapabilities { inlayHintClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                        , inlayHintClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ -> Left "Unrecognized InlayHintClientCapabilities value"

instance FromJSON DiagnosticClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRelatedDocumentSupport <- lookupMaybeFromJSON
                                            "relatedDocumentSupport"
                                            vs
           return
            DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , diagnosticClientCapabilitiesRelatedDocumentSupport = parsedRelatedDocumentSupport }
      _ -> Left "Unrecognized DiagnosticClientCapabilities value"

instance FromJSON NotebookDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedExecutionSummarySupport <- lookupMaybeFromJSON
                                             "executionSummarySupport"
                                             vs
           return
            NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                   , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport = parsedExecutionSummarySupport }
      _ -> Left "Unrecognized NotebookDocumentSyncClientCapabilities value"

instance FromJSON ShowMessageRequestClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessageActionItem <- lookupMaybeFromJSON "messageActionItem"
                                       vs
           return
            ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem = parsedMessageActionItem }
      _ -> Left "Unrecognized ShowMessageRequestClientCapabilities value"

instance FromJSON ShowDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSupport <- lookupFromJSON "support" vs
           return
            ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport = parsedSupport }
      _ -> Left "Unrecognized ShowDocumentClientCapabilities value"

instance FromJSON RegularExpressionsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEngine <- lookupFromJSON "engine" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine = parsedEngine
                                                 , regularExpressionsClientCapabilitiesVersion = parsedVersion }
      _ -> Left "Unrecognized RegularExpressionsClientCapabilities value"

instance FromJSON MarkdownClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedParser <- lookupFromJSON "parser" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           parsedAllowedTags <- lookupMaybeFromJSON "allowedTags" vs
           return
            MarkdownClientCapabilities { markdownClientCapabilitiesParser = parsedParser
                                       , markdownClientCapabilitiesVersion = parsedVersion
                                       , markdownClientCapabilitiesAllowedTags = parsedAllowedTags }
      _ -> Left "Unrecognized MarkdownClientCapabilities value"

instance FromJSON SemanticTokenTypes where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized SemanticTokenTypes value"

instance FromJSON SemanticTokenModifiers where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized SemanticTokenModifiers value"

instance FromJSON ErrorCodes where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized ErrorCodes value"

instance FromJSON LSPErrorCodes where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized LSPErrorCodes value"

instance FromJSON FoldingRangeKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized FoldingRangeKind value"

instance FromJSON SymbolKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized SymbolKind value"

instance FromJSON SymbolTag where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized SymbolTag value"

instance FromJSON UniquenessLevel where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized UniquenessLevel value"

instance FromJSON MonikerKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized MonikerKind value"

instance FromJSON InlayHintKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized InlayHintKind value"

instance FromJSON MessageType where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized MessageType value"

instance FromJSON TextDocumentSyncKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized TextDocumentSyncKind value"

instance FromJSON TextDocumentSaveReason where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized TextDocumentSaveReason value"

instance FromJSON CompletionItemKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized CompletionItemKind value"

instance FromJSON CompletionItemTag where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized CompletionItemTag value"

instance FromJSON InsertTextFormat where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized InsertTextFormat value"

instance FromJSON InsertTextMode where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized InsertTextMode value"

instance FromJSON DocumentHighlightKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized DocumentHighlightKind value"

instance FromJSON CodeActionKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized CodeActionKind value"

instance FromJSON TraceValues where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized TraceValues value"

instance FromJSON MarkupKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized MarkupKind value"

instance FromJSON PositionEncodingKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized PositionEncodingKind value"

instance FromJSON FileChangeType where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized FileChangeType value"

instance FromJSON WatchKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized WatchKind value"

instance FromJSON DiagnosticSeverity where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized DiagnosticSeverity value"

instance FromJSON DiagnosticTag where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized DiagnosticTag value"

instance FromJSON CompletionTriggerKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized CompletionTriggerKind value"

instance FromJSON SignatureHelpTriggerKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized SignatureHelpTriggerKind value"

instance FromJSON CodeActionTriggerKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized CodeActionTriggerKind value"

instance FromJSON FileOperationPatternKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized FileOperationPatternKind value"

instance FromJSON NotebookCellKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized NotebookCellKind value"

instance FromJSON ResourceOperationKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized ResourceOperationKind value"

instance FromJSON FailureHandlingKind where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized FailureHandlingKind value"

instance FromJSON PrepareSupportDefaultBehavior where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized PrepareSupportDefaultBehavior value"

instance FromJSON TokenFormat where
  fromJSON j =
    case j of
      JObject vs -> do 
      _ -> Left "Unrecognized TokenFormat value"

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