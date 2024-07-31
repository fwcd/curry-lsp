-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types where

import LSP.Utils.JSON
import LSP.Protocol.Support
import Data.Map
import JSON.Data
import JSON.Pretty

instance FromJSON ImplementationParams where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationParams {  }
      _ -> Left ("Unrecognized ImplementationParams value: " ++ ppJSON j)

instance FromJSON Location where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            Location { locationUri = parsedUri, locationRange = parsedRange }
      _ -> Left ("Unrecognized Location value: " ++ ppJSON j)

instance FromJSON ImplementationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized ImplementationRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON TypeDefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionParams {  }
      _ -> Left ("Unrecognized TypeDefinitionParams value: " ++ ppJSON j)

instance FromJSON TypeDefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TypeDefinitionRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON WorkspaceFolder where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedName <- lookupFromJSON "name" vs
           return
            WorkspaceFolder { workspaceFolderUri = parsedUri
                            , workspaceFolderName = parsedName }
      _ -> Left ("Unrecognized WorkspaceFolder value: " ++ ppJSON j)

instance FromJSON DidChangeWorkspaceFoldersParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEvent <- lookupFromJSON "event" vs
           return
            DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent = parsedEvent }
      _ ->
        Left
         ("Unrecognized DidChangeWorkspaceFoldersParams value: " ++ ppJSON j)

instance FromJSON ConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            ConfigurationParams { configurationParamsItems = parsedItems }
      _ -> Left ("Unrecognized ConfigurationParams value: " ++ ppJSON j)

instance FromJSON DocumentColorParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentColorParams { documentColorParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentColorParams value: " ++ ppJSON j)

instance FromJSON ColorInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedColor <- lookupFromJSON "color" vs
           return
            ColorInformation { colorInformationRange = parsedRange
                             , colorInformationColor = parsedColor }
      _ -> Left ("Unrecognized ColorInformation value: " ++ ppJSON j)

instance FromJSON DocumentColorRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentColorRegistrationOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ColorPresentationParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ColorPresentation value: " ++ ppJSON j)

instance FromJSON WorkDoneProgressOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            WorkDoneProgressOptions { workDoneProgressOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized WorkDoneProgressOptions value: " ++ ppJSON j)

instance FromJSON TextDocumentRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           return
            TextDocumentRegistrationOptions { textDocumentRegistrationOptionsDocumentSelector = parsedDocumentSelector }
      _ ->
        Left
         ("Unrecognized TextDocumentRegistrationOptions value: " ++ ppJSON j)

instance FromJSON FoldingRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            FoldingRangeParams { foldingRangeParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized FoldingRangeParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized FoldingRange value: " ++ ppJSON j)

instance FromJSON FoldingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized FoldingRangeRegistrationOptions value: " ++ ppJSON j)

instance FromJSON DeclarationParams where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationParams {  }
      _ -> Left ("Unrecognized DeclarationParams value: " ++ ppJSON j)

instance FromJSON DeclarationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DeclarationRegistrationOptions value: " ++ ppJSON j)

instance FromJSON SelectionRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPositions <- lookupFromJSON "positions" vs
           return
            SelectionRangeParams { selectionRangeParamsTextDocument = parsedTextDocument
                                 , selectionRangeParamsPositions = parsedPositions }
      _ -> Left ("Unrecognized SelectionRangeParams value: " ++ ppJSON j)

instance FromJSON SelectionRange where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedParent <- lookupMaybeFromJSON "parent" vs
           return
            SelectionRange { selectionRangeRange = parsedRange
                           , selectionRangeParent = parsedParent }
      _ -> Left ("Unrecognized SelectionRange value: " ++ ppJSON j)

instance FromJSON SelectionRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SelectionRangeRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON WorkDoneProgressCreateParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCreateParams { workDoneProgressCreateParamsToken = parsedToken }
      _ ->
        Left ("Unrecognized WorkDoneProgressCreateParams value: " ++ ppJSON j)

instance FromJSON WorkDoneProgressCancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           return
            WorkDoneProgressCancelParams { workDoneProgressCancelParamsToken = parsedToken }
      _ ->
        Left ("Unrecognized WorkDoneProgressCancelParams value: " ++ ppJSON j)

instance FromJSON CallHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyPrepareParams {  }
      _ ->
        Left ("Unrecognized CallHierarchyPrepareParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CallHierarchyItem value: " ++ ppJSON j)

instance FromJSON CallHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CallHierarchyRegistrationOptions value: " ++ ppJSON j)

instance FromJSON CallHierarchyIncomingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyIncomingCallsParams { callHierarchyIncomingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyIncomingCallsParams value: " ++ ppJSON j)

instance FromJSON CallHierarchyIncomingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrom <- lookupFromJSON "from" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyIncomingCall { callHierarchyIncomingCallFrom = parsedFrom
                                      , callHierarchyIncomingCallFromRanges = parsedFromRanges }
      _ -> Left ("Unrecognized CallHierarchyIncomingCall value: " ++ ppJSON j)

instance FromJSON CallHierarchyOutgoingCallsParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            CallHierarchyOutgoingCallsParams { callHierarchyOutgoingCallsParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized CallHierarchyOutgoingCallsParams value: " ++ ppJSON j)

instance FromJSON CallHierarchyOutgoingCall where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTo <- lookupFromJSON "to" vs
           parsedFromRanges <- lookupFromJSON "fromRanges" vs
           return
            CallHierarchyOutgoingCall { callHierarchyOutgoingCallTo = parsedTo
                                      , callHierarchyOutgoingCallFromRanges = parsedFromRanges }
      _ -> Left ("Unrecognized CallHierarchyOutgoingCall value: " ++ ppJSON j)

instance FromJSON SemanticTokensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            SemanticTokensParams { semanticTokensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized SemanticTokensParams value: " ++ ppJSON j)

instance FromJSON SemanticTokens where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokens { semanticTokensResultId = parsedResultId
                           , semanticTokensData = parsedData }
      _ -> Left ("Unrecognized SemanticTokens value: " ++ ppJSON j)

instance FromJSON SemanticTokensPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokensPartialResult { semanticTokensPartialResultData = parsedData }
      _ ->
        Left ("Unrecognized SemanticTokensPartialResult value: " ++ ppJSON j)

instance FromJSON SemanticTokensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SemanticTokensRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SemanticTokensRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON SemanticTokensDeltaParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPreviousResultId <- lookupFromJSON "previousResultId" vs
           return
            SemanticTokensDeltaParams { semanticTokensDeltaParamsTextDocument = parsedTextDocument
                                      , semanticTokensDeltaParamsPreviousResultId = parsedPreviousResultId }
      _ -> Left ("Unrecognized SemanticTokensDeltaParams value: " ++ ppJSON j)

instance FromJSON SemanticTokensDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDelta { semanticTokensDeltaResultId = parsedResultId
                                , semanticTokensDeltaEdits = parsedEdits }
      _ -> Left ("Unrecognized SemanticTokensDelta value: " ++ ppJSON j)

instance FromJSON SemanticTokensDeltaPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDeltaPartialResult { semanticTokensDeltaPartialResultEdits = parsedEdits }
      _ ->
        Left
         ("Unrecognized SemanticTokensDeltaPartialResult value: " ++ ppJSON j)

instance FromJSON SemanticTokensRangeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            SemanticTokensRangeParams { semanticTokensRangeParamsTextDocument = parsedTextDocument
                                      , semanticTokensRangeParamsRange = parsedRange }
      _ -> Left ("Unrecognized SemanticTokensRangeParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ShowDocumentParams value: " ++ ppJSON j)

instance FromJSON ShowDocumentResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSuccess <- lookupFromJSON "success" vs
           return
            ShowDocumentResult { showDocumentResultSuccess = parsedSuccess }
      _ -> Left ("Unrecognized ShowDocumentResult value: " ++ ppJSON j)

instance FromJSON LinkedEditingRangeParams where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeParams {  }
      _ -> Left ("Unrecognized LinkedEditingRangeParams value: " ++ ppJSON j)

instance FromJSON LinkedEditingRanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRanges <- lookupFromJSON "ranges" vs
           parsedWordPattern <- lookupMaybeFromJSON "wordPattern" vs
           return
            LinkedEditingRanges { linkedEditingRangesRanges = parsedRanges
                                , linkedEditingRangesWordPattern = parsedWordPattern }
      _ -> Left ("Unrecognized LinkedEditingRanges value: " ++ ppJSON j)

instance FromJSON LinkedEditingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized LinkedEditingRangeRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON CreateFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return CreateFilesParams { createFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized CreateFilesParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized WorkspaceEdit value: " ++ ppJSON j)

instance FromJSON FileOperationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFilters <- lookupFromJSON "filters" vs
           return
            FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters = parsedFilters }
      _ ->
        Left
         ("Unrecognized FileOperationRegistrationOptions value: " ++ ppJSON j)

instance FromJSON RenameFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return RenameFilesParams { renameFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized RenameFilesParams value: " ++ ppJSON j)

instance FromJSON DeleteFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return DeleteFilesParams { deleteFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized DeleteFilesParams value: " ++ ppJSON j)

instance FromJSON MonikerParams where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerParams {  }
      _ -> Left ("Unrecognized MonikerParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized Moniker value: " ++ ppJSON j)

instance FromJSON MonikerRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerRegistrationOptions {  }
      _ ->
        Left ("Unrecognized MonikerRegistrationOptions value: " ++ ppJSON j)

instance FromJSON TypeHierarchyPrepareParams where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyPrepareParams {  }
      _ ->
        Left ("Unrecognized TypeHierarchyPrepareParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized TypeHierarchyItem value: " ++ ppJSON j)

instance FromJSON TypeHierarchyRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TypeHierarchyRegistrationOptions value: " ++ ppJSON j)

instance FromJSON TypeHierarchySupertypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySupertypesParams { typeHierarchySupertypesParamsItem = parsedItem }
      _ ->
        Left
         ("Unrecognized TypeHierarchySupertypesParams value: " ++ ppJSON j)

instance FromJSON TypeHierarchySubtypesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItem <- lookupFromJSON "item" vs
           return
            TypeHierarchySubtypesParams { typeHierarchySubtypesParamsItem = parsedItem }
      _ ->
        Left ("Unrecognized TypeHierarchySubtypesParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized InlineValueParams value: " ++ ppJSON j)

instance FromJSON InlineValueRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized InlineValueRegistrationOptions value: " ++ ppJSON j)

instance FromJSON InlayHintParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRange <- lookupFromJSON "range" vs
           return
            InlayHintParams { inlayHintParamsTextDocument = parsedTextDocument
                            , inlayHintParamsRange = parsedRange }
      _ -> Left ("Unrecognized InlayHintParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized InlayHint value: " ++ ppJSON j)

instance FromJSON InlayHintRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlayHintRegistrationOptions {  }
      _ ->
        Left ("Unrecognized InlayHintRegistrationOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized DocumentDiagnosticParams value: " ++ ppJSON j)

instance FromJSON DocumentDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupFromJSON "relatedDocuments" vs
           return
            DocumentDiagnosticReportPartialResult { documentDiagnosticReportPartialResultRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized DocumentDiagnosticReportPartialResult value: "
           ++ ppJSON j)

instance FromJSON DiagnosticServerCancellationData where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetriggerRequest <- lookupFromJSON "retriggerRequest" vs
           return
            DiagnosticServerCancellationData { diagnosticServerCancellationDataRetriggerRequest = parsedRetriggerRequest }
      _ ->
        Left
         ("Unrecognized DiagnosticServerCancellationData value: " ++ ppJSON j)

instance FromJSON DiagnosticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DiagnosticRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DiagnosticRegistrationOptions value: " ++ ppJSON j)

instance FromJSON WorkspaceDiagnosticParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIdentifier <- lookupMaybeFromJSON "identifier" vs
           parsedPreviousResultIds <- lookupFromJSON "previousResultIds" vs
           return
            WorkspaceDiagnosticParams { workspaceDiagnosticParamsIdentifier = parsedIdentifier
                                      , workspaceDiagnosticParamsPreviousResultIds = parsedPreviousResultIds }
      _ -> Left ("Unrecognized WorkspaceDiagnosticParams value: " ++ ppJSON j)

instance FromJSON WorkspaceDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReport { workspaceDiagnosticReportItems = parsedItems }
      _ -> Left ("Unrecognized WorkspaceDiagnosticReport value: " ++ ppJSON j)

instance FromJSON WorkspaceDiagnosticReportPartialResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            WorkspaceDiagnosticReportPartialResult { workspaceDiagnosticReportPartialResultItems = parsedItems }
      _ ->
        Left
         ("Unrecognized WorkspaceDiagnosticReportPartialResult value: "
           ++ ppJSON j)

instance FromJSON DidOpenNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidOpenNotebookDocumentParams { didOpenNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                          , didOpenNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ ->
        Left
         ("Unrecognized DidOpenNotebookDocumentParams value: " ++ ppJSON j)

instance FromJSON NotebookDocumentSyncRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return NotebookDocumentSyncRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized NotebookDocumentSyncRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON DidChangeNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedChange <- lookupFromJSON "change" vs
           return
            DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                            , didChangeNotebookDocumentParamsChange = parsedChange }
      _ ->
        Left
         ("Unrecognized DidChangeNotebookDocumentParams value: " ++ ppJSON j)

instance FromJSON DidSaveNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           return
            DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument = parsedNotebookDocument }
      _ ->
        Left
         ("Unrecognized DidSaveNotebookDocumentParams value: " ++ ppJSON j)

instance FromJSON DidCloseNotebookDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookDocument <- lookupFromJSON "notebookDocument" vs
           parsedCellTextDocuments <- lookupFromJSON "cellTextDocuments" vs
           return
            DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument = parsedNotebookDocument
                                           , didCloseNotebookDocumentParamsCellTextDocuments = parsedCellTextDocuments }
      _ ->
        Left
         ("Unrecognized DidCloseNotebookDocumentParams value: " ++ ppJSON j)

instance FromJSON InlineCompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupFromJSON "context" vs
           return
            InlineCompletionParams { inlineCompletionParamsContext = parsedContext }
      _ -> Left ("Unrecognized InlineCompletionParams value: " ++ ppJSON j)

instance FromJSON InlineCompletionList where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            InlineCompletionList { inlineCompletionListItems = parsedItems }
      _ -> Left ("Unrecognized InlineCompletionList value: " ++ ppJSON j)

instance FromJSON InlineCompletionItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedInsertText <- lookupFromJSON "insertText" vs
           parsedFilterText <- lookupMaybeFromJSON "filterText" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           return
            InlineCompletionItem { inlineCompletionItemInsertText = parsedInsertText
                                 , inlineCompletionItemFilterText = parsedFilterText
                                 , inlineCompletionItemRange = parsedRange
                                 , inlineCompletionItemCommand = parsedCommand }
      _ -> Left ("Unrecognized InlineCompletionItem value: " ++ ppJSON j)

instance FromJSON InlineCompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineCompletionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized InlineCompletionRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON RegistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRegistrations <- lookupFromJSON "registrations" vs
           return
            RegistrationParams { registrationParamsRegistrations = parsedRegistrations }
      _ -> Left ("Unrecognized RegistrationParams value: " ++ ppJSON j)

instance FromJSON UnregistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUnregisterations <- lookupFromJSON "unregisterations" vs
           return
            UnregistrationParams { unregistrationParamsUnregisterations = parsedUnregisterations }
      _ -> Left ("Unrecognized UnregistrationParams value: " ++ ppJSON j)

instance FromJSON InitializeParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializeParams {  }
      _ -> Left ("Unrecognized InitializeParams value: " ++ ppJSON j)

instance FromJSON InitializeResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCapabilities <- lookupFromJSON "capabilities" vs
           parsedServerInfo <- lookupMaybeFromJSON "serverInfo" vs
           return
            InitializeResult { initializeResultCapabilities = parsedCapabilities
                             , initializeResultServerInfo = parsedServerInfo }
      _ -> Left ("Unrecognized InitializeResult value: " ++ ppJSON j)

instance FromJSON InitializeError where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRetry <- lookupFromJSON "retry" vs
           return InitializeError { initializeErrorRetry = parsedRetry }
      _ -> Left ("Unrecognized InitializeError value: " ++ ppJSON j)

instance FromJSON InitializedParams where
  fromJSON j =
    case j of
      JObject vs -> do return InitializedParams {  }
      _ -> Left ("Unrecognized InitializedParams value: " ++ ppJSON j)

instance FromJSON DidChangeConfigurationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSettings <- lookupFromJSON "settings" vs
           return
            DidChangeConfigurationParams { didChangeConfigurationParamsSettings = parsedSettings }
      _ ->
        Left ("Unrecognized DidChangeConfigurationParams value: " ++ ppJSON j)

instance FromJSON DidChangeConfigurationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSection <- lookupMaybeFromJSON "section" vs
           return
            DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection = parsedSection }
      _ ->
        Left
         ("Unrecognized DidChangeConfigurationRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON ShowMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            ShowMessageParams { showMessageParamsType = parsedType
                              , showMessageParamsMessage = parsedMessage }
      _ -> Left ("Unrecognized ShowMessageParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ShowMessageRequestParams value: " ++ ppJSON j)

instance FromJSON MessageActionItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           return MessageActionItem { messageActionItemTitle = parsedTitle }
      _ -> Left ("Unrecognized MessageActionItem value: " ++ ppJSON j)

instance FromJSON LogMessageParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedType <- lookupFromJSON "type" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            LogMessageParams { logMessageParamsType = parsedType
                             , logMessageParamsMessage = parsedMessage }
      _ -> Left ("Unrecognized LogMessageParams value: " ++ ppJSON j)

instance FromJSON DidOpenTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidOpenTextDocumentParams { didOpenTextDocumentParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DidOpenTextDocumentParams value: " ++ ppJSON j)

instance FromJSON DidChangeTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedContentChanges <- lookupFromJSON "contentChanges" vs
           return
            DidChangeTextDocumentParams { didChangeTextDocumentParamsTextDocument = parsedTextDocument
                                        , didChangeTextDocumentParamsContentChanges = parsedContentChanges }
      _ ->
        Left ("Unrecognized DidChangeTextDocumentParams value: " ++ ppJSON j)

instance FromJSON TextDocumentChangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSyncKind <- lookupFromJSON "syncKind" vs
           return
            TextDocumentChangeRegistrationOptions { textDocumentChangeRegistrationOptionsSyncKind = parsedSyncKind }
      _ ->
        Left
         ("Unrecognized TextDocumentChangeRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON DidCloseTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DidCloseTextDocumentParams { didCloseTextDocumentParamsTextDocument = parsedTextDocument }
      _ ->
        Left ("Unrecognized DidCloseTextDocumentParams value: " ++ ppJSON j)

instance FromJSON DidSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedText <- lookupMaybeFromJSON "text" vs
           return
            DidSaveTextDocumentParams { didSaveTextDocumentParamsTextDocument = parsedTextDocument
                                      , didSaveTextDocumentParamsText = parsedText }
      _ -> Left ("Unrecognized DidSaveTextDocumentParams value: " ++ ppJSON j)

instance FromJSON TextDocumentSaveRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TextDocumentSaveRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TextDocumentSaveRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON WillSaveTextDocumentParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedReason <- lookupFromJSON "reason" vs
           return
            WillSaveTextDocumentParams { willSaveTextDocumentParamsTextDocument = parsedTextDocument
                                       , willSaveTextDocumentParamsReason = parsedReason }
      _ ->
        Left ("Unrecognized WillSaveTextDocumentParams value: " ++ ppJSON j)

instance FromJSON TextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedNewText <- lookupFromJSON "newText" vs
           return
            TextEdit { textEditRange = parsedRange
                     , textEditNewText = parsedNewText }
      _ -> Left ("Unrecognized TextEdit value: " ++ ppJSON j)

instance FromJSON DidChangeWatchedFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedChanges <- lookupFromJSON "changes" vs
           return
            DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges = parsedChanges }
      _ ->
        Left ("Unrecognized DidChangeWatchedFilesParams value: " ++ ppJSON j)

instance FromJSON DidChangeWatchedFilesRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWatchers <- lookupFromJSON "watchers" vs
           return
            DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers = parsedWatchers }
      _ ->
        Left
         ("Unrecognized DidChangeWatchedFilesRegistrationOptions value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized PublishDiagnosticsParams value: " ++ ppJSON j)

instance FromJSON CompletionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return CompletionParams { completionParamsContext = parsedContext }
      _ -> Left ("Unrecognized CompletionParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CompletionItem value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CompletionList value: " ++ ppJSON j)

instance FromJSON CompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CompletionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CompletionRegistrationOptions value: " ++ ppJSON j)

instance FromJSON HoverParams where
  fromJSON j =
    case j of
      JObject vs -> do return HoverParams {  }
      _ -> Left ("Unrecognized HoverParams value: " ++ ppJSON j)

instance FromJSON Hover where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContents <- lookupFromJSON "contents" vs
           parsedRange <- lookupMaybeFromJSON "range" vs
           return
            Hover { hoverContents = parsedContents, hoverRange = parsedRange }
      _ -> Left ("Unrecognized Hover value: " ++ ppJSON j)

instance FromJSON HoverRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverRegistrationOptions {  }
      _ -> Left ("Unrecognized HoverRegistrationOptions value: " ++ ppJSON j)

instance FromJSON SignatureHelpParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return
            SignatureHelpParams { signatureHelpParamsContext = parsedContext }
      _ -> Left ("Unrecognized SignatureHelpParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SignatureHelp value: " ++ ppJSON j)

instance FromJSON SignatureHelpRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SignatureHelpRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SignatureHelpRegistrationOptions value: " ++ ppJSON j)

instance FromJSON DefinitionParams where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionParams {  }
      _ -> Left ("Unrecognized DefinitionParams value: " ++ ppJSON j)

instance FromJSON DefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DefinitionRegistrationOptions value: " ++ ppJSON j)

instance FromJSON ReferenceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupFromJSON "context" vs
           return ReferenceParams { referenceParamsContext = parsedContext }
      _ -> Left ("Unrecognized ReferenceParams value: " ++ ppJSON j)

instance FromJSON ReferenceRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ReferenceRegistrationOptions {  }
      _ ->
        Left ("Unrecognized ReferenceRegistrationOptions value: " ++ ppJSON j)

instance FromJSON DocumentHighlightParams where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightParams {  }
      _ -> Left ("Unrecognized DocumentHighlightParams value: " ++ ppJSON j)

instance FromJSON DocumentHighlight where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            DocumentHighlight { documentHighlightRange = parsedRange
                              , documentHighlightKind = parsedKind }
      _ -> Left ("Unrecognized DocumentHighlight value: " ++ ppJSON j)

instance FromJSON DocumentHighlightRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentHighlightRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON DocumentSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentSymbolParams { documentSymbolParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentSymbolParams value: " ++ ppJSON j)

instance FromJSON SymbolInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDeprecated <- lookupMaybeFromJSON "deprecated" vs
           parsedLocation <- lookupFromJSON "location" vs
           return
            SymbolInformation { symbolInformationDeprecated = parsedDeprecated
                              , symbolInformationLocation = parsedLocation }
      _ -> Left ("Unrecognized SymbolInformation value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized DocumentSymbol value: " ++ ppJSON j)

instance FromJSON DocumentSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentSymbolRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentSymbolRegistrationOptions value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized CodeActionParams value: " ++ ppJSON j)

instance FromJSON Command where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTitle <- lookupFromJSON "title" vs
           parsedTooltip <- lookupMaybeFromJSON "tooltip" vs
           parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            Command { commandTitle = parsedTitle
                    , commandTooltip = parsedTooltip
                    , commandCommand = parsedCommand
                    , commandArguments = parsedArguments }
      _ -> Left ("Unrecognized Command value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CodeAction value: " ++ ppJSON j)

instance FromJSON CodeActionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeActionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CodeActionRegistrationOptions value: " ++ ppJSON j)

instance FromJSON WorkspaceSymbolParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedQuery <- lookupFromJSON "query" vs
           return
            WorkspaceSymbolParams { workspaceSymbolParamsQuery = parsedQuery }
      _ -> Left ("Unrecognized WorkspaceSymbolParams value: " ++ ppJSON j)

instance FromJSON WorkspaceSymbol where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLocation <- lookupFromJSON "location" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            WorkspaceSymbol { workspaceSymbolLocation = parsedLocation
                            , workspaceSymbolData = parsedData }
      _ -> Left ("Unrecognized WorkspaceSymbol value: " ++ ppJSON j)

instance FromJSON WorkspaceSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return WorkspaceSymbolRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized WorkspaceSymbolRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON CodeLensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            CodeLensParams { codeLensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized CodeLensParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CodeLens value: " ++ ppJSON j)

instance FromJSON CodeLensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeLensRegistrationOptions {  }
      _ ->
        Left ("Unrecognized CodeLensRegistrationOptions value: " ++ ppJSON j)

instance FromJSON DocumentLinkParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            DocumentLinkParams { documentLinkParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized DocumentLinkParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized DocumentLink value: " ++ ppJSON j)

instance FromJSON DocumentLinkRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentLinkRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentLinkRegistrationOptions value: " ++ ppJSON j)

instance FromJSON DocumentFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentFormattingParams { documentFormattingParamsTextDocument = parsedTextDocument
                                     , documentFormattingParamsOptions = parsedOptions }
      _ -> Left ("Unrecognized DocumentFormattingParams value: " ++ ppJSON j)

instance FromJSON DocumentFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentFormattingRegistrationOptions value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingParams value: " ++ ppJSON j)

instance FromJSON DocumentRangeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentRangeFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON DocumentRangesFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedRanges <- lookupFromJSON "ranges" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentRangesFormattingParams { documentRangesFormattingParamsTextDocument = parsedTextDocument
                                           , documentRangesFormattingParamsRanges = parsedRanges
                                           , documentRangesFormattingParamsOptions = parsedOptions }
      _ ->
        Left
         ("Unrecognized DocumentRangesFormattingParams value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingParams value: " ++ ppJSON j)

instance FromJSON DocumentOnTypeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentOnTypeFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingRegistrationOptions value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized RenameParams value: " ++ ppJSON j)

instance FromJSON RenameRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return RenameRegistrationOptions {  }
      _ -> Left ("Unrecognized RenameRegistrationOptions value: " ++ ppJSON j)

instance FromJSON PrepareRenameParams where
  fromJSON j =
    case j of
      JObject vs -> do return PrepareRenameParams {  }
      _ -> Left ("Unrecognized PrepareRenameParams value: " ++ ppJSON j)

instance FromJSON ExecuteCommandParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommand <- lookupFromJSON "command" vs
           parsedArguments <- lookupMaybeFromJSON "arguments" vs
           return
            ExecuteCommandParams { executeCommandParamsCommand = parsedCommand
                                 , executeCommandParamsArguments = parsedArguments }
      _ -> Left ("Unrecognized ExecuteCommandParams value: " ++ ppJSON j)

instance FromJSON ExecuteCommandRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ExecuteCommandRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized ExecuteCommandRegistrationOptions value: "
           ++ ppJSON j)

instance FromJSON ApplyWorkspaceEditParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           parsedEdit <- lookupFromJSON "edit" vs
           parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           return
            ApplyWorkspaceEditParams { applyWorkspaceEditParamsLabel = parsedLabel
                                     , applyWorkspaceEditParamsEdit = parsedEdit
                                     , applyWorkspaceEditParamsMetadata = parsedMetadata }
      _ -> Left ("Unrecognized ApplyWorkspaceEditParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ApplyWorkspaceEditResult value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized WorkDoneProgressBegin value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized WorkDoneProgressReport value: " ++ ppJSON j)

instance FromJSON WorkDoneProgressEnd where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedMessage <- lookupMaybeFromJSON "message" vs
           return
            WorkDoneProgressEnd { workDoneProgressEndKind = parsedKind
                                , workDoneProgressEndMessage = parsedMessage }
      _ -> Left ("Unrecognized WorkDoneProgressEnd value: " ++ ppJSON j)

instance FromJSON SetTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValue <- lookupFromJSON "value" vs
           return SetTraceParams { setTraceParamsValue = parsedValue }
      _ -> Left ("Unrecognized SetTraceParams value: " ++ ppJSON j)

instance FromJSON LogTraceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessage <- lookupFromJSON "message" vs
           parsedVerbose <- lookupMaybeFromJSON "verbose" vs
           return
            LogTraceParams { logTraceParamsMessage = parsedMessage
                           , logTraceParamsVerbose = parsedVerbose }
      _ -> Left ("Unrecognized LogTraceParams value: " ++ ppJSON j)

instance FromJSON CancelParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           return CancelParams { cancelParamsId = parsedId }
      _ -> Left ("Unrecognized CancelParams value: " ++ ppJSON j)

instance FromJSON ProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedToken <- lookupFromJSON "token" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            ProgressParams { progressParamsToken = parsedToken
                           , progressParamsValue = parsedValue }
      _ -> Left ("Unrecognized ProgressParams value: " ++ ppJSON j)

instance FromJSON TextDocumentPositionParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           return
            TextDocumentPositionParams { textDocumentPositionParamsTextDocument = parsedTextDocument
                                       , textDocumentPositionParamsPosition = parsedPosition }
      _ ->
        Left ("Unrecognized TextDocumentPositionParams value: " ++ ppJSON j)

instance FromJSON WorkDoneProgressParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           return
            WorkDoneProgressParams { workDoneProgressParamsWorkDoneToken = parsedWorkDoneToken }
      _ -> Left ("Unrecognized WorkDoneProgressParams value: " ++ ppJSON j)

instance FromJSON PartialResultParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           return
            PartialResultParams { partialResultParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized PartialResultParams value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized LocationLink value: " ++ ppJSON j)

instance FromJSON Range where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedEnd <- lookupFromJSON "end" vs
           return Range { rangeStart = parsedStart, rangeEnd = parsedEnd }
      _ -> Left ("Unrecognized Range value: " ++ ppJSON j)

instance FromJSON ImplementationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationOptions {  }
      _ -> Left ("Unrecognized ImplementationOptions value: " ++ ppJSON j)

instance FromJSON StaticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupMaybeFromJSON "id" vs
           return
            StaticRegistrationOptions { staticRegistrationOptionsId = parsedId }
      _ -> Left ("Unrecognized StaticRegistrationOptions value: " ++ ppJSON j)

instance FromJSON TypeDefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionOptions {  }
      _ -> Left ("Unrecognized TypeDefinitionOptions value: " ++ ppJSON j)

instance FromJSON WorkspaceFoldersChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAdded <- lookupFromJSON "added" vs
           parsedRemoved <- lookupFromJSON "removed" vs
           return
            WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded = parsedAdded
                                        , workspaceFoldersChangeEventRemoved = parsedRemoved }
      _ ->
        Left ("Unrecognized WorkspaceFoldersChangeEvent value: " ++ ppJSON j)

instance FromJSON ConfigurationItem where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScopeUri <- lookupMaybeFromJSON "scopeUri" vs
           parsedSection <- lookupMaybeFromJSON "section" vs
           return
            ConfigurationItem { configurationItemScopeUri = parsedScopeUri
                              , configurationItemSection = parsedSection }
      _ -> Left ("Unrecognized ConfigurationItem value: " ++ ppJSON j)

instance FromJSON TextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            TextDocumentIdentifier { textDocumentIdentifierUri = parsedUri }
      _ -> Left ("Unrecognized TextDocumentIdentifier value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized Color value: " ++ ppJSON j)

instance FromJSON DocumentColorOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentColorOptions {  }
      _ -> Left ("Unrecognized DocumentColorOptions value: " ++ ppJSON j)

instance FromJSON FoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeOptions {  }
      _ -> Left ("Unrecognized FoldingRangeOptions value: " ++ ppJSON j)

instance FromJSON DeclarationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationOptions {  }
      _ -> Left ("Unrecognized DeclarationOptions value: " ++ ppJSON j)

instance FromJSON Position where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLine <- lookupFromJSON "line" vs
           parsedCharacter <- lookupFromJSON "character" vs
           return
            Position { positionLine = parsedLine
                     , positionCharacter = parsedCharacter }
      _ -> Left ("Unrecognized Position value: " ++ ppJSON j)

instance FromJSON SelectionRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeOptions {  }
      _ -> Left ("Unrecognized SelectionRangeOptions value: " ++ ppJSON j)

instance FromJSON CallHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CallHierarchyOptions {  }
      _ -> Left ("Unrecognized CallHierarchyOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SemanticTokensOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SemanticTokensEdit value: " ++ ppJSON j)

instance FromJSON LinkedEditingRangeOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeOptions {  }
      _ -> Left ("Unrecognized LinkedEditingRangeOptions value: " ++ ppJSON j)

instance FromJSON FileCreate where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileCreate { fileCreateUri = parsedUri }
      _ -> Left ("Unrecognized FileCreate value: " ++ ppJSON j)

instance FromJSON TextDocumentEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            TextDocumentEdit { textDocumentEditTextDocument = parsedTextDocument
                             , textDocumentEditEdits = parsedEdits }
      _ -> Left ("Unrecognized TextDocumentEdit value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CreateFile value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized RenameFile value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized DeleteFile value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ChangeAnnotation value: " ++ ppJSON j)

instance FromJSON FileOperationFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            FileOperationFilter { fileOperationFilterScheme = parsedScheme
                                , fileOperationFilterPattern = parsedPattern }
      _ -> Left ("Unrecognized FileOperationFilter value: " ++ ppJSON j)

instance FromJSON FileRename where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           return
            FileRename { fileRenameOldUri = parsedOldUri
                       , fileRenameNewUri = parsedNewUri }
      _ -> Left ("Unrecognized FileRename value: " ++ ppJSON j)

instance FromJSON FileDelete where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileDelete { fileDeleteUri = parsedUri }
      _ -> Left ("Unrecognized FileDelete value: " ++ ppJSON j)

instance FromJSON MonikerOptions where
  fromJSON j =
    case j of
      JObject vs -> do return MonikerOptions {  }
      _ -> Left ("Unrecognized MonikerOptions value: " ++ ppJSON j)

instance FromJSON TypeHierarchyOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeHierarchyOptions {  }
      _ -> Left ("Unrecognized TypeHierarchyOptions value: " ++ ppJSON j)

instance FromJSON InlineValueContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFrameId <- lookupFromJSON "frameId" vs
           parsedStoppedLocation <- lookupFromJSON "stoppedLocation" vs
           return
            InlineValueContext { inlineValueContextFrameId = parsedFrameId
                               , inlineValueContextStoppedLocation = parsedStoppedLocation }
      _ -> Left ("Unrecognized InlineValueContext value: " ++ ppJSON j)

instance FromJSON InlineValueText where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedText <- lookupFromJSON "text" vs
           return
            InlineValueText { inlineValueTextRange = parsedRange
                            , inlineValueTextText = parsedText }
      _ -> Left ("Unrecognized InlineValueText value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized InlineValueVariableLookup value: " ++ ppJSON j)

instance FromJSON InlineValueEvaluatableExpression where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedExpression <- lookupMaybeFromJSON "expression" vs
           return
            InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange = parsedRange
                                             , inlineValueEvaluatableExpressionExpression = parsedExpression }
      _ ->
        Left
         ("Unrecognized InlineValueEvaluatableExpression value: " ++ ppJSON j)

instance FromJSON InlineValueOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueOptions {  }
      _ -> Left ("Unrecognized InlineValueOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized InlayHintLabelPart value: " ++ ppJSON j)

instance FromJSON MarkupContent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            MarkupContent { markupContentKind = parsedKind
                          , markupContentValue = parsedValue }
      _ -> Left ("Unrecognized MarkupContent value: " ++ ppJSON j)

instance FromJSON InlayHintOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            InlayHintOptions { inlayHintOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized InlayHintOptions value: " ++ ppJSON j)

instance FromJSON RelatedFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedFullDocumentDiagnosticReport { relatedFullDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized RelatedFullDocumentDiagnosticReport value: "
           ++ ppJSON j)

instance FromJSON RelatedUnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedDocuments <- lookupMaybeFromJSON "relatedDocuments" vs
           return
            RelatedUnchangedDocumentDiagnosticReport { relatedUnchangedDocumentDiagnosticReportRelatedDocuments = parsedRelatedDocuments }
      _ ->
        Left
         ("Unrecognized RelatedUnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized FullDocumentDiagnosticReport value: " ++ ppJSON j)

instance FromJSON UnchangedDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedResultId <- lookupFromJSON "resultId" vs
           return
            UnchangedDocumentDiagnosticReport { unchangedDocumentDiagnosticReportKind = parsedKind
                                              , unchangedDocumentDiagnosticReportResultId = parsedResultId }
      _ ->
        Left
         ("Unrecognized UnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized DiagnosticOptions value: " ++ ppJSON j)

instance FromJSON PreviousResultId where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            PreviousResultId { previousResultIdUri = parsedUri
                             , previousResultIdValue = parsedValue }
      _ -> Left ("Unrecognized PreviousResultId value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized NotebookDocument value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized TextDocumentItem value: " ++ ppJSON j)

instance FromJSON NotebookDocumentSyncOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookSelector <- lookupFromJSON "notebookSelector" vs
           parsedSave <- lookupMaybeFromJSON "save" vs
           return
            NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector = parsedNotebookSelector
                                        , notebookDocumentSyncOptionsSave = parsedSave }
      _ ->
        Left ("Unrecognized NotebookDocumentSyncOptions value: " ++ ppJSON j)

instance FromJSON VersionedNotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           parsedUri <- lookupFromJSON "uri" vs
           return
            VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion = parsedVersion
                                                , versionedNotebookDocumentIdentifierUri = parsedUri }
      _ ->
        Left
         ("Unrecognized VersionedNotebookDocumentIdentifier value: "
           ++ ppJSON j)

instance FromJSON NotebookDocumentChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMetadata <- lookupMaybeFromJSON "metadata" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata = parsedMetadata
                                        , notebookDocumentChangeEventCells = parsedCells }
      _ ->
        Left ("Unrecognized NotebookDocumentChangeEvent value: " ++ ppJSON j)

instance FromJSON NotebookDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return
            NotebookDocumentIdentifier { notebookDocumentIdentifierUri = parsedUri }
      _ ->
        Left ("Unrecognized NotebookDocumentIdentifier value: " ++ ppJSON j)

instance FromJSON InlineCompletionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedSelectedCompletionInfo <- lookupMaybeFromJSON
                                            "selectedCompletionInfo"
                                            vs
           return
            InlineCompletionContext { inlineCompletionContextTriggerKind = parsedTriggerKind
                                    , inlineCompletionContextSelectedCompletionInfo = parsedSelectedCompletionInfo }
      _ -> Left ("Unrecognized InlineCompletionContext value: " ++ ppJSON j)

instance FromJSON StringValue where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            StringValue { stringValueKind = parsedKind
                        , stringValueValue = parsedValue }
      _ -> Left ("Unrecognized StringValue value: " ++ ppJSON j)

instance FromJSON InlineCompletionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineCompletionOptions {  }
      _ -> Left ("Unrecognized InlineCompletionOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized Registration value: " ++ ppJSON j)

instance FromJSON Unregistration where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           parsedMethod <- lookupFromJSON "method" vs
           return
            Unregistration { unregistrationId = parsedId
                           , unregistrationMethod = parsedMethod }
      _ -> Left ("Unrecognized Unregistration value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized BaseInitializeParams value: " ++ ppJSON j)

instance FromJSON WorkspaceFoldersInitializeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           return
            WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders = parsedWorkspaceFolders }
      _ ->
        Left
         ("Unrecognized WorkspaceFoldersInitializeParams value: " ++ ppJSON j)

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

instance FromJSON ServerInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            ServerInfo { serverInfoName = parsedName
                       , serverInfoVersion = parsedVersion }
      _ -> Left ("Unrecognized ServerInfo value: " ++ ppJSON j)

instance FromJSON VersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            VersionedTextDocumentIdentifier { versionedTextDocumentIdentifierVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized VersionedTextDocumentIdentifier value: " ++ ppJSON j)

instance FromJSON SaveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeText <- lookupMaybeFromJSON "includeText" vs
           return SaveOptions { saveOptionsIncludeText = parsedIncludeText }
      _ -> Left ("Unrecognized SaveOptions value: " ++ ppJSON j)

instance FromJSON FileEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedType <- lookupFromJSON "type" vs
           return
            FileEvent { fileEventUri = parsedUri, fileEventType = parsedType }
      _ -> Left ("Unrecognized FileEvent value: " ++ ppJSON j)

instance FromJSON FileSystemWatcher where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGlobPattern <- lookupFromJSON "globPattern" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            FileSystemWatcher { fileSystemWatcherGlobPattern = parsedGlobPattern
                              , fileSystemWatcherKind = parsedKind }
      _ -> Left ("Unrecognized FileSystemWatcher value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized Diagnostic value: " ++ ppJSON j)

instance FromJSON CompletionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedTriggerCharacter <- lookupMaybeFromJSON "triggerCharacter" vs
           return
            CompletionContext { completionContextTriggerKind = parsedTriggerKind
                              , completionContextTriggerCharacter = parsedTriggerCharacter }
      _ -> Left ("Unrecognized CompletionContext value: " ++ ppJSON j)

instance FromJSON CompletionItemLabelDetails where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDetail <- lookupMaybeFromJSON "detail" vs
           parsedDescription <- lookupMaybeFromJSON "description" vs
           return
            CompletionItemLabelDetails { completionItemLabelDetailsDetail = parsedDetail
                                       , completionItemLabelDetailsDescription = parsedDescription }
      _ ->
        Left ("Unrecognized CompletionItemLabelDetails value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized InsertReplaceEdit value: " ++ ppJSON j)

instance FromJSON CompletionItemDefaults where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommitCharacters <- lookupMaybeFromJSON "commitCharacters" vs
           parsedEditRange <- lookupMaybeFromJSON "editRange" vs
           parsedInsertTextFormat <- lookupMaybeFromJSON "insertTextFormat" vs
           parsedInsertTextMode <- lookupMaybeFromJSON "insertTextMode" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CompletionItemDefaults { completionItemDefaultsCommitCharacters = parsedCommitCharacters
                                   , completionItemDefaultsEditRange = parsedEditRange
                                   , completionItemDefaultsInsertTextFormat = parsedInsertTextFormat
                                   , completionItemDefaultsInsertTextMode = parsedInsertTextMode
                                   , completionItemDefaultsData = parsedData }
      _ -> Left ("Unrecognized CompletionItemDefaults value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CompletionOptions value: " ++ ppJSON j)

instance FromJSON HoverOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverOptions {  }
      _ -> Left ("Unrecognized HoverOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SignatureHelpContext value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SignatureInformation value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized SignatureHelpOptions value: " ++ ppJSON j)

instance FromJSON DefinitionOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionOptions {  }
      _ -> Left ("Unrecognized DefinitionOptions value: " ++ ppJSON j)

instance FromJSON ReferenceContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeDeclaration <- lookupFromJSON "includeDeclaration" vs
           return
            ReferenceContext { referenceContextIncludeDeclaration = parsedIncludeDeclaration }
      _ -> Left ("Unrecognized ReferenceContext value: " ++ ppJSON j)

instance FromJSON ReferenceOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ReferenceOptions {  }
      _ -> Left ("Unrecognized ReferenceOptions value: " ++ ppJSON j)

instance FromJSON DocumentHighlightOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentHighlightOptions {  }
      _ -> Left ("Unrecognized DocumentHighlightOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized BaseSymbolInformation value: " ++ ppJSON j)

instance FromJSON DocumentSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupMaybeFromJSON "label" vs
           return
            DocumentSymbolOptions { documentSymbolOptionsLabel = parsedLabel }
      _ -> Left ("Unrecognized DocumentSymbolOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized CodeActionContext value: " ++ ppJSON j)

instance FromJSON CodeActionDisabled where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedReason <- lookupFromJSON "reason" vs
           return
            CodeActionDisabled { codeActionDisabledReason = parsedReason }
      _ -> Left ("Unrecognized CodeActionDisabled value: " ++ ppJSON j)

instance FromJSON CodeActionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCodeActionKinds <- lookupMaybeFromJSON "codeActionKinds" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeActionOptions { codeActionOptionsCodeActionKinds = parsedCodeActionKinds
                              , codeActionOptionsDocumentation = parsedDocumentation
                              , codeActionOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized CodeActionOptions value: " ++ ppJSON j)

instance FromJSON LocationUriOnly where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return LocationUriOnly { locationUriOnlyUri = parsedUri }
      _ -> Left ("Unrecognized LocationUriOnly value: " ++ ppJSON j)

instance FromJSON WorkspaceSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized WorkspaceSymbolOptions value: " ++ ppJSON j)

instance FromJSON CodeLensOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeLensOptions { codeLensOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized CodeLensOptions value: " ++ ppJSON j)

instance FromJSON DocumentLinkOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            DocumentLinkOptions { documentLinkOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized DocumentLinkOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized FormattingOptions value: " ++ ppJSON j)

instance FromJSON DocumentFormattingOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentFormattingOptions {  }
      _ -> Left ("Unrecognized DocumentFormattingOptions value: " ++ ppJSON j)

instance FromJSON DocumentRangeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRangesSupport <- lookupMaybeFromJSON "rangesSupport" vs
           return
            DocumentRangeFormattingOptions { documentRangeFormattingOptionsRangesSupport = parsedRangesSupport }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingOptions value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingOptions value: " ++ ppJSON j)

instance FromJSON RenameOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPrepareProvider <- lookupMaybeFromJSON "prepareProvider" vs
           return
            RenameOptions { renameOptionsPrepareProvider = parsedPrepareProvider }
      _ -> Left ("Unrecognized RenameOptions value: " ++ ppJSON j)

instance FromJSON PrepareRenamePlaceholder where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedPlaceholder <- lookupFromJSON "placeholder" vs
           return
            PrepareRenamePlaceholder { prepareRenamePlaceholderRange = parsedRange
                                     , prepareRenamePlaceholderPlaceholder = parsedPlaceholder }
      _ -> Left ("Unrecognized PrepareRenamePlaceholder value: " ++ ppJSON j)

instance FromJSON PrepareRenameDefaultBehavior where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDefaultBehavior <- lookupFromJSON "defaultBehavior" vs
           return
            PrepareRenameDefaultBehavior { prepareRenameDefaultBehaviorDefaultBehavior = parsedDefaultBehavior }
      _ ->
        Left ("Unrecognized PrepareRenameDefaultBehavior value: " ++ ppJSON j)

instance FromJSON ExecuteCommandOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCommands <- lookupFromJSON "commands" vs
           return
            ExecuteCommandOptions { executeCommandOptionsCommands = parsedCommands }
      _ -> Left ("Unrecognized ExecuteCommandOptions value: " ++ ppJSON j)

instance FromJSON WorkspaceEditMetadata where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIsRefactoring <- lookupMaybeFromJSON "isRefactoring" vs
           return
            WorkspaceEditMetadata { workspaceEditMetadataIsRefactoring = parsedIsRefactoring }
      _ -> Left ("Unrecognized WorkspaceEditMetadata value: " ++ ppJSON j)

instance FromJSON SemanticTokensLegend where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTokenTypes <- lookupFromJSON "tokenTypes" vs
           parsedTokenModifiers <- lookupFromJSON "tokenModifiers" vs
           return
            SemanticTokensLegend { semanticTokensLegendTokenTypes = parsedTokenTypes
                                 , semanticTokensLegendTokenModifiers = parsedTokenModifiers }
      _ -> Left ("Unrecognized SemanticTokensLegend value: " ++ ppJSON j)

instance FromJSON SemanticTokensFullDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDelta <- lookupMaybeFromJSON "delta" vs
           return
            SemanticTokensFullDelta { semanticTokensFullDeltaDelta = parsedDelta }
      _ -> Left ("Unrecognized SemanticTokensFullDelta value: " ++ ppJSON j)

instance FromJSON OptionalVersionedTextDocumentIdentifier where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersion <- lookupFromJSON "version" vs
           return
            OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized OptionalVersionedTextDocumentIdentifier value: "
           ++ ppJSON j)

instance FromJSON AnnotatedTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAnnotationId <- lookupFromJSON "annotationId" vs
           return
            AnnotatedTextEdit { annotatedTextEditAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized AnnotatedTextEdit value: " ++ ppJSON j)

instance FromJSON SnippetTextEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedSnippet <- lookupFromJSON "snippet" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           return
            SnippetTextEdit { snippetTextEditRange = parsedRange
                            , snippetTextEditSnippet = parsedSnippet
                            , snippetTextEditAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized SnippetTextEdit value: " ++ ppJSON j)

instance FromJSON ResourceOperation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           return
            ResourceOperation { resourceOperationKind = parsedKind
                              , resourceOperationAnnotationId = parsedAnnotationId }
      _ -> Left ("Unrecognized ResourceOperation value: " ++ ppJSON j)

instance FromJSON CreateFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            CreateFileOptions { createFileOptionsOverwrite = parsedOverwrite
                              , createFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left ("Unrecognized CreateFileOptions value: " ++ ppJSON j)

instance FromJSON RenameFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            RenameFileOptions { renameFileOptionsOverwrite = parsedOverwrite
                              , renameFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left ("Unrecognized RenameFileOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized DeleteFileOptions value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized FileOperationPattern value: " ++ ppJSON j)

instance FromJSON WorkspaceFullDocumentDiagnosticReport where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedVersion <- lookupFromJSON "version" vs
           return
            WorkspaceFullDocumentDiagnosticReport { workspaceFullDocumentDiagnosticReportUri = parsedUri
                                                  , workspaceFullDocumentDiagnosticReportVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized WorkspaceFullDocumentDiagnosticReport value: "
           ++ ppJSON j)

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
        Left
         ("Unrecognized WorkspaceUnchangedDocumentDiagnosticReport value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized NotebookCell value: " ++ ppJSON j)

instance FromJSON NotebookDocumentFilterWithNotebook where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupFromJSON "notebook" vs
           parsedCells <- lookupMaybeFromJSON "cells" vs
           return
            NotebookDocumentFilterWithNotebook { notebookDocumentFilterWithNotebookNotebook = parsedNotebook
                                               , notebookDocumentFilterWithNotebookCells = parsedCells }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterWithNotebook value: "
           ++ ppJSON j)

instance FromJSON NotebookDocumentFilterWithCells where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupMaybeFromJSON "notebook" vs
           parsedCells <- lookupFromJSON "cells" vs
           return
            NotebookDocumentFilterWithCells { notebookDocumentFilterWithCellsNotebook = parsedNotebook
                                            , notebookDocumentFilterWithCellsCells = parsedCells }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterWithCells value: " ++ ppJSON j)

instance FromJSON NotebookDocumentCellChanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStructure <- lookupMaybeFromJSON "structure" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           parsedTextContent <- lookupMaybeFromJSON "textContent" vs
           return
            NotebookDocumentCellChanges { notebookDocumentCellChangesStructure = parsedStructure
                                        , notebookDocumentCellChangesData = parsedData
                                        , notebookDocumentCellChangesTextContent = parsedTextContent }
      _ ->
        Left ("Unrecognized NotebookDocumentCellChanges value: " ++ ppJSON j)

instance FromJSON SelectedCompletionInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedText <- lookupFromJSON "text" vs
           return
            SelectedCompletionInfo { selectedCompletionInfoRange = parsedRange
                                   , selectedCompletionInfoText = parsedText }
      _ -> Left ("Unrecognized SelectedCompletionInfo value: " ++ ppJSON j)

instance FromJSON ClientInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            ClientInfo { clientInfoName = parsedName
                       , clientInfoVersion = parsedVersion }
      _ -> Left ("Unrecognized ClientInfo value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized ClientCapabilities value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized TextDocumentSyncOptions value: " ++ ppJSON j)

instance FromJSON WorkspaceOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           parsedFileOperations <- lookupMaybeFromJSON "fileOperations" vs
           return
            WorkspaceOptions { workspaceOptionsWorkspaceFolders = parsedWorkspaceFolders
                             , workspaceOptionsFileOperations = parsedFileOperations }
      _ -> Left ("Unrecognized WorkspaceOptions value: " ++ ppJSON j)

instance FromJSON TextDocumentContentChangePartial where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedRangeLength <- lookupMaybeFromJSON "rangeLength" vs
           parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentContentChangePartial { textDocumentContentChangePartialRange = parsedRange
                                             , textDocumentContentChangePartialRangeLength = parsedRangeLength
                                             , textDocumentContentChangePartialText = parsedText }
      _ ->
        Left
         ("Unrecognized TextDocumentContentChangePartial value: " ++ ppJSON j)

instance FromJSON TextDocumentContentChangeWholeDocument where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedText <- lookupFromJSON "text" vs
           return
            TextDocumentContentChangeWholeDocument { textDocumentContentChangeWholeDocumentText = parsedText }
      _ ->
        Left
         ("Unrecognized TextDocumentContentChangeWholeDocument value: "
           ++ ppJSON j)

instance FromJSON CodeDescription where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedHref <- lookupFromJSON "href" vs
           return CodeDescription { codeDescriptionHref = parsedHref }
      _ -> Left ("Unrecognized CodeDescription value: " ++ ppJSON j)

instance FromJSON DiagnosticRelatedInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLocation <- lookupFromJSON "location" vs
           parsedMessage <- lookupFromJSON "message" vs
           return
            DiagnosticRelatedInformation { diagnosticRelatedInformationLocation = parsedLocation
                                         , diagnosticRelatedInformationMessage = parsedMessage }
      _ ->
        Left ("Unrecognized DiagnosticRelatedInformation value: " ++ ppJSON j)

instance FromJSON EditRangeWithInsertReplace where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedInsert <- lookupFromJSON "insert" vs
           parsedReplace <- lookupFromJSON "replace" vs
           return
            EditRangeWithInsertReplace { editRangeWithInsertReplaceInsert = parsedInsert
                                       , editRangeWithInsertReplaceReplace = parsedReplace }
      _ ->
        Left ("Unrecognized EditRangeWithInsertReplace value: " ++ ppJSON j)

instance FromJSON ServerCompletionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabelDetailsSupport <- lookupMaybeFromJSON
                                         "labelDetailsSupport"
                                         vs
           return
            ServerCompletionItemOptions { serverCompletionItemOptionsLabelDetailsSupport = parsedLabelDetailsSupport }
      _ ->
        Left ("Unrecognized ServerCompletionItemOptions value: " ++ ppJSON j)

instance FromJSON MarkedStringWithLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            MarkedStringWithLanguage { markedStringWithLanguageLanguage = parsedLanguage
                                     , markedStringWithLanguageValue = parsedValue }
      _ -> Left ("Unrecognized MarkedStringWithLanguage value: " ++ ppJSON j)

instance FromJSON ParameterInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           return
            ParameterInformation { parameterInformationLabel = parsedLabel
                                 , parameterInformationDocumentation = parsedDocumentation }
      _ -> Left ("Unrecognized ParameterInformation value: " ++ ppJSON j)

instance FromJSON CodeActionKindDocumentation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedCommand <- lookupFromJSON "command" vs
           return
            CodeActionKindDocumentation { codeActionKindDocumentationKind = parsedKind
                                        , codeActionKindDocumentationCommand = parsedCommand }
      _ ->
        Left ("Unrecognized CodeActionKindDocumentation value: " ++ ppJSON j)

instance FromJSON NotebookCellTextDocumentFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebook <- lookupFromJSON "notebook" vs
           parsedLanguage <- lookupMaybeFromJSON "language" vs
           return
            NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook = parsedNotebook
                                           , notebookCellTextDocumentFilterLanguage = parsedLanguage }
      _ ->
        Left
         ("Unrecognized NotebookCellTextDocumentFilter value: " ++ ppJSON j)

instance FromJSON FileOperationPatternOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIgnoreCase <- lookupMaybeFromJSON "ignoreCase" vs
           return
            FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase = parsedIgnoreCase }
      _ ->
        Left ("Unrecognized FileOperationPatternOptions value: " ++ ppJSON j)

instance FromJSON ExecutionSummary where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedExecutionOrder <- lookupFromJSON "executionOrder" vs
           parsedSuccess <- lookupMaybeFromJSON "success" vs
           return
            ExecutionSummary { executionSummaryExecutionOrder = parsedExecutionOrder
                             , executionSummarySuccess = parsedSuccess }
      _ -> Left ("Unrecognized ExecutionSummary value: " ++ ppJSON j)

instance FromJSON NotebookCellLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           return
            NotebookCellLanguage { notebookCellLanguageLanguage = parsedLanguage }
      _ -> Left ("Unrecognized NotebookCellLanguage value: " ++ ppJSON j)

instance FromJSON NotebookDocumentCellChangeStructure where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedArray <- lookupFromJSON "array" vs
           parsedDidOpen <- lookupMaybeFromJSON "didOpen" vs
           parsedDidClose <- lookupMaybeFromJSON "didClose" vs
           return
            NotebookDocumentCellChangeStructure { notebookDocumentCellChangeStructureArray = parsedArray
                                                , notebookDocumentCellChangeStructureDidOpen = parsedDidOpen
                                                , notebookDocumentCellChangeStructureDidClose = parsedDidClose }
      _ ->
        Left
         ("Unrecognized NotebookDocumentCellChangeStructure value: "
           ++ ppJSON j)

instance FromJSON NotebookDocumentCellContentChanges where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocument <- lookupFromJSON "document" vs
           parsedChanges <- lookupFromJSON "changes" vs
           return
            NotebookDocumentCellContentChanges { notebookDocumentCellContentChangesDocument = parsedDocument
                                               , notebookDocumentCellContentChangesChanges = parsedChanges }
      _ ->
        Left
         ("Unrecognized NotebookDocumentCellContentChanges value: "
           ++ ppJSON j)

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
           parsedFoldingRange <- lookupMaybeFromJSON "foldingRange" vs
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
                                        , workspaceClientCapabilitiesDiagnostics = parsedDiagnostics
                                        , workspaceClientCapabilitiesFoldingRange = parsedFoldingRange }
      _ ->
        Left ("Unrecognized WorkspaceClientCapabilities value: " ++ ppJSON j)

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

instance FromJSON NotebookDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSynchronization <- lookupFromJSON "synchronization" vs
           return
            NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization = parsedSynchronization }
      _ ->
        Left
         ("Unrecognized NotebookDocumentClientCapabilities value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized WindowClientCapabilities value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized GeneralClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized WorkspaceFoldersServerCapabilities value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized FileOperationOptions value: " ++ ppJSON j)

instance FromJSON RelativePattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedBaseUri <- lookupFromJSON "baseUri" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            RelativePattern { relativePatternBaseUri = parsedBaseUri
                            , relativePatternPattern = parsedPattern }
      _ -> Left ("Unrecognized RelativePattern value: " ++ ppJSON j)

instance FromJSON TextDocumentFilterLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            TextDocumentFilterLanguage { textDocumentFilterLanguageLanguage = parsedLanguage
                                       , textDocumentFilterLanguageScheme = parsedScheme
                                       , textDocumentFilterLanguagePattern = parsedPattern }
      _ ->
        Left ("Unrecognized TextDocumentFilterLanguage value: " ++ ppJSON j)

instance FromJSON TextDocumentFilterScheme where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupMaybeFromJSON "language" vs
           parsedScheme <- lookupFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            TextDocumentFilterScheme { textDocumentFilterSchemeLanguage = parsedLanguage
                                     , textDocumentFilterSchemeScheme = parsedScheme
                                     , textDocumentFilterSchemePattern = parsedPattern }
      _ -> Left ("Unrecognized TextDocumentFilterScheme value: " ++ ppJSON j)

instance FromJSON TextDocumentFilterPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupMaybeFromJSON "language" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            TextDocumentFilterPattern { textDocumentFilterPatternLanguage = parsedLanguage
                                      , textDocumentFilterPatternScheme = parsedScheme
                                      , textDocumentFilterPatternPattern = parsedPattern }
      _ -> Left ("Unrecognized TextDocumentFilterPattern value: " ++ ppJSON j)

instance FromJSON NotebookDocumentFilterNotebookType where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupFromJSON "notebookType" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            NotebookDocumentFilterNotebookType { notebookDocumentFilterNotebookTypeNotebookType = parsedNotebookType
                                               , notebookDocumentFilterNotebookTypeScheme = parsedScheme
                                               , notebookDocumentFilterNotebookTypePattern = parsedPattern }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterNotebookType value: "
           ++ ppJSON j)

instance FromJSON NotebookDocumentFilterScheme where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupMaybeFromJSON "notebookType" vs
           parsedScheme <- lookupFromJSON "scheme" vs
           parsedPattern <- lookupMaybeFromJSON "pattern" vs
           return
            NotebookDocumentFilterScheme { notebookDocumentFilterSchemeNotebookType = parsedNotebookType
                                         , notebookDocumentFilterSchemeScheme = parsedScheme
                                         , notebookDocumentFilterSchemePattern = parsedPattern }
      _ ->
        Left ("Unrecognized NotebookDocumentFilterScheme value: " ++ ppJSON j)

instance FromJSON NotebookDocumentFilterPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedNotebookType <- lookupMaybeFromJSON "notebookType" vs
           parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            NotebookDocumentFilterPattern { notebookDocumentFilterPatternNotebookType = parsedNotebookType
                                          , notebookDocumentFilterPatternScheme = parsedScheme
                                          , notebookDocumentFilterPatternPattern = parsedPattern }
      _ ->
        Left
         ("Unrecognized NotebookDocumentFilterPattern value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized NotebookCellArrayChange value: " ++ ppJSON j)

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
           parsedMetadataSupport <- lookupMaybeFromJSON "metadataSupport" vs
           parsedSnippetEditSupport <- lookupMaybeFromJSON
                                        "snippetEditSupport"
                                        vs
           return
            WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges = parsedDocumentChanges
                                            , workspaceEditClientCapabilitiesResourceOperations = parsedResourceOperations
                                            , workspaceEditClientCapabilitiesFailureHandling = parsedFailureHandling
                                            , workspaceEditClientCapabilitiesNormalizesLineEndings = parsedNormalizesLineEndings
                                            , workspaceEditClientCapabilitiesChangeAnnotationSupport = parsedChangeAnnotationSupport
                                            , workspaceEditClientCapabilitiesMetadataSupport = parsedMetadataSupport
                                            , workspaceEditClientCapabilitiesSnippetEditSupport = parsedSnippetEditSupport }
      _ ->
        Left
         ("Unrecognized WorkspaceEditClientCapabilities value: " ++ ppJSON j)

instance FromJSON DidChangeConfigurationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DidChangeConfigurationClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DidChangeWatchedFilesClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized WorkspaceSymbolClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON ExecuteCommandClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized ExecuteCommandClientCapabilities value: " ++ ppJSON j)

instance FromJSON SemanticTokensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            SemanticTokensWorkspaceClientCapabilities { semanticTokensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized SemanticTokensWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON CodeLensWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            CodeLensWorkspaceClientCapabilities { codeLensWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized CodeLensWorkspaceClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized FileOperationClientCapabilities value: " ++ ppJSON j)

instance FromJSON InlineValueWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            InlineValueWorkspaceClientCapabilities { inlineValueWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized InlineValueWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON InlayHintWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            InlayHintWorkspaceClientCapabilities { inlayHintWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized InlayHintWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON DiagnosticWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            DiagnosticWorkspaceClientCapabilities { diagnosticWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized DiagnosticWorkspaceClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON FoldingRangeWorkspaceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRefreshSupport <- lookupMaybeFromJSON "refreshSupport" vs
           return
            FoldingRangeWorkspaceClientCapabilities { foldingRangeWorkspaceClientCapabilitiesRefreshSupport = parsedRefreshSupport }
      _ ->
        Left
         ("Unrecognized FoldingRangeWorkspaceClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized TextDocumentSyncClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized CompletionClientCapabilities value: " ++ ppJSON j)

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
      _ -> Left ("Unrecognized HoverClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized SignatureHelpClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DeclarationClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized DefinitionClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized TypeDefinitionClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized ImplementationClientCapabilities value: " ++ ppJSON j)

instance FromJSON ReferenceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left ("Unrecognized ReferenceClientCapabilities value: " ++ ppJSON j)

instance FromJSON DocumentHighlightClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentHighlightClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DocumentSymbolClientCapabilities value: " ++ ppJSON j)

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
           parsedDocumentationSupport <- lookupMaybeFromJSON
                                          "documentationSupport"
                                          vs
           return
            CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , codeActionClientCapabilitiesCodeActionLiteralSupport = parsedCodeActionLiteralSupport
                                         , codeActionClientCapabilitiesIsPreferredSupport = parsedIsPreferredSupport
                                         , codeActionClientCapabilitiesDisabledSupport = parsedDisabledSupport
                                         , codeActionClientCapabilitiesDataSupport = parsedDataSupport
                                         , codeActionClientCapabilitiesResolveSupport = parsedResolveSupport
                                         , codeActionClientCapabilitiesHonorsChangeAnnotations = parsedHonorsChangeAnnotations
                                         , codeActionClientCapabilitiesDocumentationSupport = parsedDocumentationSupport }
      _ ->
        Left ("Unrecognized CodeActionClientCapabilities value: " ++ ppJSON j)

instance FromJSON CodeLensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                       , codeLensClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ ->
        Left ("Unrecognized CodeLensClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized DocumentLinkClientCapabilities value: " ++ ppJSON j)

instance FromJSON DocumentColorClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentColorClientCapabilities value: " ++ ppJSON j)

instance FromJSON DocumentFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentFormattingClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON DocumentRangeFormattingClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRangesSupport <- lookupMaybeFromJSON "rangesSupport" vs
           return
            DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                                      , documentRangeFormattingClientCapabilitiesRangesSupport = parsedRangesSupport }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingClientCapabilities value: "
           ++ ppJSON j)

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
        Left
         ("Unrecognized DocumentOnTypeFormattingClientCapabilities value: "
           ++ ppJSON j)

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
      _ -> Left ("Unrecognized RenameClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized FoldingRangeClientCapabilities value: " ++ ppJSON j)

instance FromJSON SelectionRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized SelectionRangeClientCapabilities value: " ++ ppJSON j)

instance FromJSON PublishDiagnosticsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedVersionSupport <- lookupMaybeFromJSON "versionSupport" vs
           return
            PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesVersionSupport = parsedVersionSupport }
      _ ->
        Left
         ("Unrecognized PublishDiagnosticsClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON CallHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized CallHierarchyClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized SemanticTokensClientCapabilities value: " ++ ppJSON j)

instance FromJSON LinkedEditingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized LinkedEditingRangeClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON MonikerClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left ("Unrecognized MonikerClientCapabilities value: " ++ ppJSON j)

instance FromJSON TypeHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized TypeHierarchyClientCapabilities value: " ++ ppJSON j)

instance FromJSON InlineValueClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            InlineValueClientCapabilities { inlineValueClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized InlineValueClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized InlayHintClientCapabilities value: " ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized DiagnosticClientCapabilities value: " ++ ppJSON j)

instance FromJSON InlineCompletionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            InlineCompletionClientCapabilities { inlineCompletionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized InlineCompletionClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left
         ("Unrecognized NotebookDocumentSyncClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON ShowMessageRequestClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedMessageActionItem <- lookupMaybeFromJSON "messageActionItem"
                                       vs
           return
            ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem = parsedMessageActionItem }
      _ ->
        Left
         ("Unrecognized ShowMessageRequestClientCapabilities value: "
           ++ ppJSON j)

instance FromJSON ShowDocumentClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSupport <- lookupFromJSON "support" vs
           return
            ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport = parsedSupport }
      _ ->
        Left
         ("Unrecognized ShowDocumentClientCapabilities value: " ++ ppJSON j)

instance FromJSON StaleRequestSupportOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCancel <- lookupFromJSON "cancel" vs
           parsedRetryOnContentModified <- lookupFromJSON
                                            "retryOnContentModified"
                                            vs
           return
            StaleRequestSupportOptions { staleRequestSupportOptionsCancel = parsedCancel
                                       , staleRequestSupportOptionsRetryOnContentModified = parsedRetryOnContentModified }
      _ ->
        Left ("Unrecognized StaleRequestSupportOptions value: " ++ ppJSON j)

instance FromJSON RegularExpressionsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEngine <- lookupFromJSON "engine" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine = parsedEngine
                                                 , regularExpressionsClientCapabilitiesVersion = parsedVersion }
      _ ->
        Left
         ("Unrecognized RegularExpressionsClientCapabilities value: "
           ++ ppJSON j)

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
      _ ->
        Left ("Unrecognized MarkdownClientCapabilities value: " ++ ppJSON j)

instance FromJSON ChangeAnnotationsSupportOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGroupsOnLabel <- lookupMaybeFromJSON "groupsOnLabel" vs
           return
            ChangeAnnotationsSupportOptions { changeAnnotationsSupportOptionsGroupsOnLabel = parsedGroupsOnLabel }
      _ ->
        Left
         ("Unrecognized ChangeAnnotationsSupportOptions value: " ++ ppJSON j)

instance FromJSON ClientSymbolKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupMaybeFromJSON "valueSet" vs
           return
            ClientSymbolKindOptions { clientSymbolKindOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized ClientSymbolKindOptions value: " ++ ppJSON j)

instance FromJSON ClientSymbolTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientSymbolTagOptions { clientSymbolTagOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized ClientSymbolTagOptions value: " ++ ppJSON j)

instance FromJSON ClientSymbolResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientSymbolResolveOptions { clientSymbolResolveOptionsProperties = parsedProperties }
      _ ->
        Left ("Unrecognized ClientSymbolResolveOptions value: " ++ ppJSON j)

instance FromJSON ClientCompletionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSnippetSupport <- lookupMaybeFromJSON "snippetSupport" vs
           parsedCommitCharactersSupport <- lookupMaybeFromJSON
                                             "commitCharactersSupport"
                                             vs
           parsedDocumentationFormat <- lookupMaybeFromJSON
                                         "documentationFormat"
                                         vs
           parsedDeprecatedSupport <- lookupMaybeFromJSON "deprecatedSupport"
                                       vs
           parsedPreselectSupport <- lookupMaybeFromJSON "preselectSupport" vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedInsertReplaceSupport <- lookupMaybeFromJSON
                                          "insertReplaceSupport"
                                          vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           parsedInsertTextModeSupport <- lookupMaybeFromJSON
                                           "insertTextModeSupport"
                                           vs
           parsedLabelDetailsSupport <- lookupMaybeFromJSON
                                         "labelDetailsSupport"
                                         vs
           return
            ClientCompletionItemOptions { clientCompletionItemOptionsSnippetSupport = parsedSnippetSupport
                                        , clientCompletionItemOptionsCommitCharactersSupport = parsedCommitCharactersSupport
                                        , clientCompletionItemOptionsDocumentationFormat = parsedDocumentationFormat
                                        , clientCompletionItemOptionsDeprecatedSupport = parsedDeprecatedSupport
                                        , clientCompletionItemOptionsPreselectSupport = parsedPreselectSupport
                                        , clientCompletionItemOptionsTagSupport = parsedTagSupport
                                        , clientCompletionItemOptionsInsertReplaceSupport = parsedInsertReplaceSupport
                                        , clientCompletionItemOptionsResolveSupport = parsedResolveSupport
                                        , clientCompletionItemOptionsInsertTextModeSupport = parsedInsertTextModeSupport
                                        , clientCompletionItemOptionsLabelDetailsSupport = parsedLabelDetailsSupport }
      _ ->
        Left ("Unrecognized ClientCompletionItemOptions value: " ++ ppJSON j)

instance FromJSON ClientCompletionItemOptionsKind where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupMaybeFromJSON "valueSet" vs
           return
            ClientCompletionItemOptionsKind { clientCompletionItemOptionsKindValueSet = parsedValueSet }
      _ ->
        Left
         ("Unrecognized ClientCompletionItemOptionsKind value: " ++ ppJSON j)

instance FromJSON CompletionListCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItemDefaults <- lookupMaybeFromJSON "itemDefaults" vs
           return
            CompletionListCapabilities { completionListCapabilitiesItemDefaults = parsedItemDefaults }
      _ ->
        Left ("Unrecognized CompletionListCapabilities value: " ++ ppJSON j)

instance FromJSON ClientSignatureInformationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentationFormat <- lookupMaybeFromJSON
                                         "documentationFormat"
                                         vs
           parsedParameterInformation <- lookupMaybeFromJSON
                                          "parameterInformation"
                                          vs
           parsedActiveParameterSupport <- lookupMaybeFromJSON
                                            "activeParameterSupport"
                                            vs
           parsedNoActiveParameterSupport <- lookupMaybeFromJSON
                                              "noActiveParameterSupport"
                                              vs
           return
            ClientSignatureInformationOptions { clientSignatureInformationOptionsDocumentationFormat = parsedDocumentationFormat
                                              , clientSignatureInformationOptionsParameterInformation = parsedParameterInformation
                                              , clientSignatureInformationOptionsActiveParameterSupport = parsedActiveParameterSupport
                                              , clientSignatureInformationOptionsNoActiveParameterSupport = parsedNoActiveParameterSupport }
      _ ->
        Left
         ("Unrecognized ClientSignatureInformationOptions value: "
           ++ ppJSON j)

instance FromJSON ClientCodeActionLiteralOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCodeActionKind <- lookupFromJSON "codeActionKind" vs
           return
            ClientCodeActionLiteralOptions { clientCodeActionLiteralOptionsCodeActionKind = parsedCodeActionKind }
      _ ->
        Left
         ("Unrecognized ClientCodeActionLiteralOptions value: " ++ ppJSON j)

instance FromJSON ClientCodeActionResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCodeActionResolveOptions { clientCodeActionResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientCodeActionResolveOptions value: " ++ ppJSON j)

instance FromJSON ClientCodeLensResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCodeLensResolveOptions { clientCodeLensResolveOptionsProperties = parsedProperties }
      _ ->
        Left ("Unrecognized ClientCodeLensResolveOptions value: " ++ ppJSON j)

instance FromJSON ClientFoldingRangeKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupMaybeFromJSON "valueSet" vs
           return
            ClientFoldingRangeKindOptions { clientFoldingRangeKindOptionsValueSet = parsedValueSet }
      _ ->
        Left
         ("Unrecognized ClientFoldingRangeKindOptions value: " ++ ppJSON j)

instance FromJSON ClientFoldingRangeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCollapsedText <- lookupMaybeFromJSON "collapsedText" vs
           return
            ClientFoldingRangeOptions { clientFoldingRangeOptionsCollapsedText = parsedCollapsedText }
      _ -> Left ("Unrecognized ClientFoldingRangeOptions value: " ++ ppJSON j)

instance FromJSON DiagnosticsCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedCodeDescriptionSupport <- lookupMaybeFromJSON
                                            "codeDescriptionSupport"
                                            vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           return
            DiagnosticsCapabilities { diagnosticsCapabilitiesRelatedInformation = parsedRelatedInformation
                                    , diagnosticsCapabilitiesTagSupport = parsedTagSupport
                                    , diagnosticsCapabilitiesCodeDescriptionSupport = parsedCodeDescriptionSupport
                                    , diagnosticsCapabilitiesDataSupport = parsedDataSupport }
      _ -> Left ("Unrecognized DiagnosticsCapabilities value: " ++ ppJSON j)

instance FromJSON ClientSemanticTokensRequestOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupMaybeFromJSON "range" vs
           parsedFull <- lookupMaybeFromJSON "full" vs
           return
            ClientSemanticTokensRequestOptions { clientSemanticTokensRequestOptionsRange = parsedRange
                                               , clientSemanticTokensRequestOptionsFull = parsedFull }
      _ ->
        Left
         ("Unrecognized ClientSemanticTokensRequestOptions value: "
           ++ ppJSON j)

instance FromJSON ClientInlayHintResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientInlayHintResolveOptions value: " ++ ppJSON j)

instance FromJSON ClientShowMessageActionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAdditionalPropertiesSupport <- lookupMaybeFromJSON
                                                 "additionalPropertiesSupport"
                                                 vs
           return
            ClientShowMessageActionItemOptions { clientShowMessageActionItemOptionsAdditionalPropertiesSupport = parsedAdditionalPropertiesSupport }
      _ ->
        Left
         ("Unrecognized ClientShowMessageActionItemOptions value: "
           ++ ppJSON j)

instance FromJSON CompletionItemTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            CompletionItemTagOptions { completionItemTagOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized CompletionItemTagOptions value: " ++ ppJSON j)

instance FromJSON ClientCompletionItemResolveOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedProperties <- lookupFromJSON "properties" vs
           return
            ClientCompletionItemResolveOptions { clientCompletionItemResolveOptionsProperties = parsedProperties }
      _ ->
        Left
         ("Unrecognized ClientCompletionItemResolveOptions value: "
           ++ ppJSON j)

instance FromJSON ClientCompletionItemInsertTextModeOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientCompletionItemInsertTextModeOptions { clientCompletionItemInsertTextModeOptionsValueSet = parsedValueSet }
      _ ->
        Left
         ("Unrecognized ClientCompletionItemInsertTextModeOptions value: "
           ++ ppJSON j)

instance FromJSON ClientSignatureParameterInformationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabelOffsetSupport <- lookupMaybeFromJSON
                                        "labelOffsetSupport"
                                        vs
           return
            ClientSignatureParameterInformationOptions { clientSignatureParameterInformationOptionsLabelOffsetSupport = parsedLabelOffsetSupport }
      _ ->
        Left
         ("Unrecognized ClientSignatureParameterInformationOptions value: "
           ++ ppJSON j)

instance FromJSON ClientCodeActionKindOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientCodeActionKindOptions { clientCodeActionKindOptionsValueSet = parsedValueSet }
      _ ->
        Left ("Unrecognized ClientCodeActionKindOptions value: " ++ ppJSON j)

instance FromJSON ClientDiagnosticsTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            ClientDiagnosticsTagOptions { clientDiagnosticsTagOptionsValueSet = parsedValueSet }
      _ ->
        Left ("Unrecognized ClientDiagnosticsTagOptions value: " ++ ppJSON j)

instance FromJSON ClientSemanticTokensRequestFullDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDelta <- lookupMaybeFromJSON "delta" vs
           return
            ClientSemanticTokensRequestFullDelta { clientSemanticTokensRequestFullDeltaDelta = parsedDelta }
      _ ->
        Left
         ("Unrecognized ClientSemanticTokensRequestFullDelta value: "
           ++ ppJSON j)

instance FromJSON SemanticTokenTypes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "namespace" -> Right SemanticTokenTypesNamespace
         "type" -> Right SemanticTokenTypesType
         "class" -> Right SemanticTokenTypesClass
         "enum" -> Right SemanticTokenTypesEnum
         "interface" -> Right SemanticTokenTypesInterface
         "struct" -> Right SemanticTokenTypesStruct
         "typeParameter" -> Right SemanticTokenTypesTypeParameter
         "parameter" -> Right SemanticTokenTypesParameter
         "variable" -> Right SemanticTokenTypesVariable
         "property" -> Right SemanticTokenTypesProperty
         "enumMember" -> Right SemanticTokenTypesEnumMember
         "event" -> Right SemanticTokenTypesEvent
         "function" -> Right SemanticTokenTypesFunction
         "method" -> Right SemanticTokenTypesMethod
         "macro" -> Right SemanticTokenTypesMacro
         "keyword" -> Right SemanticTokenTypesKeyword
         "modifier" -> Right SemanticTokenTypesModifier
         "comment" -> Right SemanticTokenTypesComment
         "string" -> Right SemanticTokenTypesString
         "number" -> Right SemanticTokenTypesNumber
         "regexp" -> Right SemanticTokenTypesRegexp
         "operator" -> Right SemanticTokenTypesOperator
         "decorator" -> Right SemanticTokenTypesDecorator
         "label" -> Right SemanticTokenTypesLabel
         _ -> Left ("Unrecognized SemanticTokenTypes value: " ++ ppJSON j)

instance FromJSON SemanticTokenModifiers where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "declaration" -> Right SemanticTokenModifiersDeclaration
         "definition" -> Right SemanticTokenModifiersDefinition
         "readonly" -> Right SemanticTokenModifiersReadonly
         "static" -> Right SemanticTokenModifiersStatic
         "deprecated" -> Right SemanticTokenModifiersDeprecated
         "abstract" -> Right SemanticTokenModifiersAbstract
         "async" -> Right SemanticTokenModifiersAsync
         "modification" -> Right SemanticTokenModifiersModification
         "documentation" -> Right SemanticTokenModifiersDocumentation
         "defaultLibrary" -> Right SemanticTokenModifiersDefaultLibrary
         _ -> Left ("Unrecognized SemanticTokenModifiers value: " ++ ppJSON j)

instance FromJSON DocumentDiagnosticReportKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "full" -> Right DocumentDiagnosticReportKindFull
         "unchanged" -> Right DocumentDiagnosticReportKindUnchanged
         _ ->
           Left
            ("Unrecognized DocumentDiagnosticReportKind value: " ++ ppJSON j)

instance FromJSON ErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         -32700 -> Right ErrorCodesParseError
         -32600 -> Right ErrorCodesInvalidRequest
         -32601 -> Right ErrorCodesMethodNotFound
         -32602 -> Right ErrorCodesInvalidParams
         -32603 -> Right ErrorCodesInternalError
         -32002 -> Right ErrorCodesServerNotInitialized
         -32001 -> Right ErrorCodesUnknownErrorCode
         _ -> Left ("Unrecognized ErrorCodes value: " ++ ppJSON j)

instance FromJSON LSPErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         -32803 -> Right LSPErrorCodesRequestFailed
         -32802 -> Right LSPErrorCodesServerCancelled
         -32801 -> Right LSPErrorCodesContentModified
         -32800 -> Right LSPErrorCodesRequestCancelled
         _ -> Left ("Unrecognized LSPErrorCodes value: " ++ ppJSON j)

instance FromJSON FoldingRangeKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "comment" -> Right FoldingRangeKindComment
         "imports" -> Right FoldingRangeKindImports
         "region" -> Right FoldingRangeKindRegion
         _ -> Left ("Unrecognized FoldingRangeKind value: " ++ ppJSON j)

instance FromJSON SymbolKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SymbolKindFile
         2 -> Right SymbolKindModule
         3 -> Right SymbolKindNamespace
         4 -> Right SymbolKindPackage
         5 -> Right SymbolKindClass
         6 -> Right SymbolKindMethod
         7 -> Right SymbolKindProperty
         8 -> Right SymbolKindField
         9 -> Right SymbolKindConstructor
         10 -> Right SymbolKindEnum
         11 -> Right SymbolKindInterface
         12 -> Right SymbolKindFunction
         13 -> Right SymbolKindVariable
         14 -> Right SymbolKindConstant
         15 -> Right SymbolKindString
         16 -> Right SymbolKindNumber
         17 -> Right SymbolKindBoolean
         18 -> Right SymbolKindArray
         19 -> Right SymbolKindObject
         20 -> Right SymbolKindKey
         21 -> Right SymbolKindNull
         22 -> Right SymbolKindEnumMember
         23 -> Right SymbolKindStruct
         24 -> Right SymbolKindEvent
         25 -> Right SymbolKindOperator
         26 -> Right SymbolKindTypeParameter
         _ -> Left ("Unrecognized SymbolKind value: " ++ ppJSON j)

instance FromJSON SymbolTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SymbolTagDeprecated
         _ -> Left ("Unrecognized SymbolTag value: " ++ ppJSON j)

instance FromJSON UniquenessLevel where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "document" -> Right UniquenessLevelDocument
         "project" -> Right UniquenessLevelProject
         "group" -> Right UniquenessLevelGroup
         "scheme" -> Right UniquenessLevelScheme
         "global" -> Right UniquenessLevelGlobal
         _ -> Left ("Unrecognized UniquenessLevel value: " ++ ppJSON j)

instance FromJSON MonikerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "import" -> Right MonikerKindImport
         "export" -> Right MonikerKindExport
         "local" -> Right MonikerKindLocal
         _ -> Left ("Unrecognized MonikerKind value: " ++ ppJSON j)

instance FromJSON InlayHintKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InlayHintKindType
         2 -> Right InlayHintKindParameter
         _ -> Left ("Unrecognized InlayHintKind value: " ++ ppJSON j)

instance FromJSON MessageType where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right MessageTypeError
         2 -> Right MessageTypeWarning
         3 -> Right MessageTypeInfo
         4 -> Right MessageTypeLog
         5 -> Right MessageTypeDebug
         _ -> Left ("Unrecognized MessageType value: " ++ ppJSON j)

instance FromJSON TextDocumentSyncKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         0 -> Right TextDocumentSyncKindNone
         1 -> Right TextDocumentSyncKindFull
         2 -> Right TextDocumentSyncKindIncremental
         _ -> Left ("Unrecognized TextDocumentSyncKind value: " ++ ppJSON j)

instance FromJSON TextDocumentSaveReason where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right TextDocumentSaveReasonManual
         2 -> Right TextDocumentSaveReasonAfterDelay
         3 -> Right TextDocumentSaveReasonFocusOut
         _ -> Left ("Unrecognized TextDocumentSaveReason value: " ++ ppJSON j)

instance FromJSON CompletionItemKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionItemKindText
         2 -> Right CompletionItemKindMethod
         3 -> Right CompletionItemKindFunction
         4 -> Right CompletionItemKindConstructor
         5 -> Right CompletionItemKindField
         6 -> Right CompletionItemKindVariable
         7 -> Right CompletionItemKindClass
         8 -> Right CompletionItemKindInterface
         9 -> Right CompletionItemKindModule
         10 -> Right CompletionItemKindProperty
         11 -> Right CompletionItemKindUnit
         12 -> Right CompletionItemKindValue
         13 -> Right CompletionItemKindEnum
         14 -> Right CompletionItemKindKeyword
         15 -> Right CompletionItemKindSnippet
         16 -> Right CompletionItemKindColor
         17 -> Right CompletionItemKindFile
         18 -> Right CompletionItemKindReference
         19 -> Right CompletionItemKindFolder
         20 -> Right CompletionItemKindEnumMember
         21 -> Right CompletionItemKindConstant
         22 -> Right CompletionItemKindStruct
         23 -> Right CompletionItemKindEvent
         24 -> Right CompletionItemKindOperator
         25 -> Right CompletionItemKindTypeParameter
         _ -> Left ("Unrecognized CompletionItemKind value: " ++ ppJSON j)

instance FromJSON CompletionItemTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionItemTagDeprecated
         _ -> Left ("Unrecognized CompletionItemTag value: " ++ ppJSON j)

instance FromJSON InsertTextFormat where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InsertTextFormatPlainText
         2 -> Right InsertTextFormatSnippet
         _ -> Left ("Unrecognized InsertTextFormat value: " ++ ppJSON j)

instance FromJSON InsertTextMode where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InsertTextModeAsIs
         2 -> Right InsertTextModeAdjustIndentation
         _ -> Left ("Unrecognized InsertTextMode value: " ++ ppJSON j)

instance FromJSON DocumentHighlightKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DocumentHighlightKindText
         2 -> Right DocumentHighlightKindRead
         3 -> Right DocumentHighlightKindWrite
         _ -> Left ("Unrecognized DocumentHighlightKind value: " ++ ppJSON j)

instance FromJSON CodeActionKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "" -> Right CodeActionKindEmpty
         "quickfix" -> Right CodeActionKindQuickFix
         "refactor" -> Right CodeActionKindRefactor
         "refactor.extract" -> Right CodeActionKindRefactorExtract
         "refactor.inline" -> Right CodeActionKindRefactorInline
         "refactor.move" -> Right CodeActionKindRefactorMove
         "refactor.rewrite" -> Right CodeActionKindRefactorRewrite
         "source" -> Right CodeActionKindSource
         "source.organizeImports" -> Right CodeActionKindSourceOrganizeImports
         "source.fixAll" -> Right CodeActionKindSourceFixAll
         "notebook" -> Right CodeActionKindNotebook
         _ -> Left ("Unrecognized CodeActionKind value: " ++ ppJSON j)

instance FromJSON TraceValue where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "off" -> Right TraceValueOff
         "messages" -> Right TraceValueMessages
         "verbose" -> Right TraceValueVerbose
         _ -> Left ("Unrecognized TraceValue value: " ++ ppJSON j)

instance FromJSON MarkupKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "plaintext" -> Right MarkupKindPlainText
         "markdown" -> Right MarkupKindMarkdown
         _ -> Left ("Unrecognized MarkupKind value: " ++ ppJSON j)

instance FromJSON LanguageKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "abap" -> Right LanguageKindABAP
         "bat" -> Right LanguageKindWindowsBat
         "bibtex" -> Right LanguageKindBibTeX
         "clojure" -> Right LanguageKindClojure
         "coffeescript" -> Right LanguageKindCoffeescript
         "c" -> Right LanguageKindC
         "cpp" -> Right LanguageKindCPP
         "csharp" -> Right LanguageKindCSharp
         "css" -> Right LanguageKindCSS
         "d" -> Right LanguageKindD
         "pascal" -> Right LanguageKindDelphi
         "diff" -> Right LanguageKindDiff
         "dart" -> Right LanguageKindDart
         "dockerfile" -> Right LanguageKindDockerfile
         "elixir" -> Right LanguageKindElixir
         "erlang" -> Right LanguageKindErlang
         "fsharp" -> Right LanguageKindFSharp
         "git-commit" -> Right LanguageKindGitCommit
         "rebase" -> Right LanguageKindGitRebase
         "go" -> Right LanguageKindGo
         "groovy" -> Right LanguageKindGroovy
         "handlebars" -> Right LanguageKindHandlebars
         "haskell" -> Right LanguageKindHaskell
         "html" -> Right LanguageKindHTML
         "ini" -> Right LanguageKindIni
         "java" -> Right LanguageKindJava
         "javascript" -> Right LanguageKindJavaScript
         "javascriptreact" -> Right LanguageKindJavaScriptReact
         "json" -> Right LanguageKindJSON
         "latex" -> Right LanguageKindLaTeX
         "less" -> Right LanguageKindLess
         "lua" -> Right LanguageKindLua
         "makefile" -> Right LanguageKindMakefile
         "markdown" -> Right LanguageKindMarkdown
         "objective-c" -> Right LanguageKindObjectiveC
         "objective-cpp" -> Right LanguageKindObjectiveCPP
         "pascal" -> Right LanguageKindPascal
         "perl" -> Right LanguageKindPerl
         "perl6" -> Right LanguageKindPerl6
         "php" -> Right LanguageKindPHP
         "powershell" -> Right LanguageKindPowershell
         "jade" -> Right LanguageKindPug
         "python" -> Right LanguageKindPython
         "r" -> Right LanguageKindR
         "razor" -> Right LanguageKindRazor
         "ruby" -> Right LanguageKindRuby
         "rust" -> Right LanguageKindRust
         "scss" -> Right LanguageKindSCSS
         "sass" -> Right LanguageKindSASS
         "scala" -> Right LanguageKindScala
         "shaderlab" -> Right LanguageKindShaderLab
         "shellscript" -> Right LanguageKindShellScript
         "sql" -> Right LanguageKindSQL
         "swift" -> Right LanguageKindSwift
         "typescript" -> Right LanguageKindTypeScript
         "typescriptreact" -> Right LanguageKindTypeScriptReact
         "tex" -> Right LanguageKindTeX
         "vb" -> Right LanguageKindVisualBasic
         "xml" -> Right LanguageKindXML
         "xsl" -> Right LanguageKindXSL
         "yaml" -> Right LanguageKindYAML
         _ -> Left ("Unrecognized LanguageKind value: " ++ ppJSON j)

instance FromJSON InlineCompletionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InlineCompletionTriggerKindInvoked
         2 -> Right InlineCompletionTriggerKindAutomatic
         _ ->
           Left
            ("Unrecognized InlineCompletionTriggerKind value: " ++ ppJSON j)

instance FromJSON PositionEncodingKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "utf-8" -> Right PositionEncodingKindUTF8
         "utf-16" -> Right PositionEncodingKindUTF16
         "utf-32" -> Right PositionEncodingKindUTF32
         _ -> Left ("Unrecognized PositionEncodingKind value: " ++ ppJSON j)

instance FromJSON FileChangeType where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right FileChangeTypeCreated
         2 -> Right FileChangeTypeChanged
         3 -> Right FileChangeTypeDeleted
         _ -> Left ("Unrecognized FileChangeType value: " ++ ppJSON j)

instance FromJSON WatchKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right WatchKindCreate
         2 -> Right WatchKindChange
         4 -> Right WatchKindDelete
         _ -> Left ("Unrecognized WatchKind value: " ++ ppJSON j)

instance FromJSON DiagnosticSeverity where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DiagnosticSeverityError
         2 -> Right DiagnosticSeverityWarning
         3 -> Right DiagnosticSeverityInformation
         4 -> Right DiagnosticSeverityHint
         _ -> Left ("Unrecognized DiagnosticSeverity value: " ++ ppJSON j)

instance FromJSON DiagnosticTag where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right DiagnosticTagUnnecessary
         2 -> Right DiagnosticTagDeprecated
         _ -> Left ("Unrecognized DiagnosticTag value: " ++ ppJSON j)

instance FromJSON CompletionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionTriggerKindInvoked
         2 -> Right CompletionTriggerKindTriggerCharacter
         3 -> Right CompletionTriggerKindTriggerForIncompleteCompletions
         _ -> Left ("Unrecognized CompletionTriggerKind value: " ++ ppJSON j)

instance FromJSON SignatureHelpTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SignatureHelpTriggerKindInvoked
         2 -> Right SignatureHelpTriggerKindTriggerCharacter
         3 -> Right SignatureHelpTriggerKindContentChange
         _ ->
           Left ("Unrecognized SignatureHelpTriggerKind value: " ++ ppJSON j)

instance FromJSON CodeActionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CodeActionTriggerKindInvoked
         2 -> Right CodeActionTriggerKindAutomatic
         _ -> Left ("Unrecognized CodeActionTriggerKind value: " ++ ppJSON j)

instance FromJSON FileOperationPatternKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "file" -> Right FileOperationPatternKindFile
         "folder" -> Right FileOperationPatternKindFolder
         _ ->
           Left ("Unrecognized FileOperationPatternKind value: " ++ ppJSON j)

instance FromJSON NotebookCellKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right NotebookCellKindMarkup
         2 -> Right NotebookCellKindCode
         _ -> Left ("Unrecognized NotebookCellKind value: " ++ ppJSON j)

instance FromJSON ResourceOperationKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "create" -> Right ResourceOperationKindCreate
         "rename" -> Right ResourceOperationKindRename
         "delete" -> Right ResourceOperationKindDelete
         _ -> Left ("Unrecognized ResourceOperationKind value: " ++ ppJSON j)

instance FromJSON FailureHandlingKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "abort" -> Right FailureHandlingKindAbort
         "transactional" -> Right FailureHandlingKindTransactional
         "textOnlyTransactional" ->
           Right FailureHandlingKindTextOnlyTransactional
         "undo" -> Right FailureHandlingKindUndo
         _ -> Left ("Unrecognized FailureHandlingKind value: " ++ ppJSON j)

instance FromJSON PrepareSupportDefaultBehavior where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right PrepareSupportDefaultBehaviorIdentifier
         _ ->
           Left
            ("Unrecognized PrepareSupportDefaultBehavior value: " ++ ppJSON j)

instance FromJSON TokenFormat where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "relative" -> Right TokenFormatRelative
         _ -> Left ("Unrecognized TokenFormat value: " ++ ppJSON j)

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

data WorkspaceFolder = WorkspaceFolder { workspaceFolderUri :: Uri
                                       , workspaceFolderName :: String }
 deriving (Show,Eq)

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent :: WorkspaceFoldersChangeEvent }
 deriving (Show,Eq)

data ConfigurationParams = ConfigurationParams { configurationParamsItems :: [ConfigurationItem] }
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

data ShowDocumentParams = ShowDocumentParams { showDocumentParamsUri :: Uri
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

data NotebookDocumentSyncRegistrationOptions = NotebookDocumentSyncRegistrationOptions {  }
 deriving (Show,Eq)

data DidChangeNotebookDocumentParams = DidChangeNotebookDocumentParams { didChangeNotebookDocumentParamsNotebookDocument :: VersionedNotebookDocumentIdentifier
                                                                       , didChangeNotebookDocumentParamsChange :: NotebookDocumentChangeEvent }
 deriving (Show,Eq)

data DidSaveNotebookDocumentParams = DidSaveNotebookDocumentParams { didSaveNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier }
 deriving (Show,Eq)

data DidCloseNotebookDocumentParams = DidCloseNotebookDocumentParams { didCloseNotebookDocumentParamsNotebookDocument :: NotebookDocumentIdentifier
                                                                     , didCloseNotebookDocumentParamsCellTextDocuments :: [TextDocumentIdentifier] }
 deriving (Show,Eq)

data InlineCompletionParams = InlineCompletionParams { inlineCompletionParamsContext :: InlineCompletionContext }
 deriving (Show,Eq)

data InlineCompletionList = InlineCompletionList { inlineCompletionListItems :: [InlineCompletionItem] }
 deriving (Show,Eq)

data InlineCompletionItem = InlineCompletionItem { inlineCompletionItemInsertText :: Either String StringValue
                                                 , inlineCompletionItemFilterText :: Maybe String
                                                 , inlineCompletionItemRange :: Maybe Range
                                                 , inlineCompletionItemCommand :: Maybe Command }
 deriving (Show,Eq)

data InlineCompletionRegistrationOptions = InlineCompletionRegistrationOptions {  }
 deriving (Show,Eq)

data RegistrationParams = RegistrationParams { registrationParamsRegistrations :: [Registration] }
 deriving (Show,Eq)

data UnregistrationParams = UnregistrationParams { unregistrationParamsUnregisterations :: [Unregistration] }
 deriving (Show,Eq)

data InitializeParams = InitializeParams {  }
 deriving (Show,Eq)

data InitializeResult = InitializeResult { initializeResultCapabilities :: ServerCapabilities
                                         , initializeResultServerInfo :: Maybe ServerInfo }
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
                                     , completionListItemDefaults :: Maybe CompletionItemDefaults
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
                                   , signatureHelpActiveParameter :: Maybe (Either Int ()) }
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
                       , commandTooltip :: Maybe String
                       , commandCommand :: String
                       , commandArguments :: Maybe [LSPAny] }
 deriving (Show,Eq)

data CodeAction = CodeAction { codeActionTitle :: String
                             , codeActionKind :: Maybe CodeActionKind
                             , codeActionDiagnostics :: Maybe [Diagnostic]
                             , codeActionIsPreferred :: Maybe Bool
                             , codeActionDisabled :: Maybe CodeActionDisabled
                             , codeActionEdit :: Maybe WorkspaceEdit
                             , codeActionCommand :: Maybe Command
                             , codeActionData :: Maybe LSPAny }
 deriving (Show,Eq)

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }
 deriving (Show,Eq)

data WorkspaceSymbolParams = WorkspaceSymbolParams { workspaceSymbolParamsQuery :: String }
 deriving (Show,Eq)

data WorkspaceSymbol = WorkspaceSymbol { workspaceSymbolLocation :: Either Location LocationUriOnly
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
                                 , documentLinkTarget :: Maybe Uri
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

data DocumentRangesFormattingParams = DocumentRangesFormattingParams { documentRangesFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                     , documentRangesFormattingParamsRanges :: [Range]
                                                                     , documentRangesFormattingParamsOptions :: FormattingOptions }
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
                                                         , applyWorkspaceEditParamsEdit :: WorkspaceEdit
                                                         , applyWorkspaceEditParamsMetadata :: Maybe WorkspaceEditMetadata }
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

data SetTraceParams = SetTraceParams { setTraceParamsValue :: TraceValue }
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

data PartialResultParams = PartialResultParams { partialResultParamsPartialResultToken :: Maybe ProgressToken }
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

data ConfigurationItem = ConfigurationItem { configurationItemScopeUri :: Maybe Uri
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
                                                   , semanticTokensOptionsFull :: Maybe (Either Bool SemanticTokensFullDelta) }
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
                                         , textDocumentEditEdits :: [Either (Either TextEdit AnnotatedTextEdit) SnippetTextEdit] }
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

data NotebookDocument = NotebookDocument { notebookDocumentUri :: Uri
                                         , notebookDocumentNotebookType :: String
                                         , notebookDocumentVersion :: Int
                                         , notebookDocumentMetadata :: Maybe LSPObject
                                         , notebookDocumentCells :: [NotebookCell] }
 deriving (Show,Eq)

data TextDocumentItem = TextDocumentItem { textDocumentItemUri :: DocumentUri
                                         , textDocumentItemLanguageId :: LanguageKind
                                         , textDocumentItemVersion :: Int
                                         , textDocumentItemText :: String }
 deriving (Show,Eq)

data NotebookDocumentSyncOptions = NotebookDocumentSyncOptions { notebookDocumentSyncOptionsNotebookSelector :: [Either NotebookDocumentFilterWithNotebook NotebookDocumentFilterWithCells]
                                                               , notebookDocumentSyncOptionsSave :: Maybe Bool }
 deriving (Show,Eq)

data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier { versionedNotebookDocumentIdentifierVersion :: Int
                                                                               , versionedNotebookDocumentIdentifierUri :: Uri }
 deriving (Show,Eq)

data NotebookDocumentChangeEvent = NotebookDocumentChangeEvent { notebookDocumentChangeEventMetadata :: Maybe LSPObject
                                                               , notebookDocumentChangeEventCells :: Maybe NotebookDocumentCellChanges }
 deriving (Show,Eq)

data NotebookDocumentIdentifier = NotebookDocumentIdentifier { notebookDocumentIdentifierUri :: Uri }
 deriving (Show,Eq)

data InlineCompletionContext = InlineCompletionContext { inlineCompletionContextTriggerKind :: InlineCompletionTriggerKind
                                                       , inlineCompletionContextSelectedCompletionInfo :: Maybe SelectedCompletionInfo }
 deriving (Show,Eq)

data StringValue = StringValue { stringValueKind :: String
                               , stringValueValue :: String }
 deriving (Show,Eq)

data InlineCompletionOptions = InlineCompletionOptions {  }
 deriving (Show,Eq)

data Registration = Registration { registrationId :: String
                                 , registrationMethod :: String
                                 , registrationRegisterOptions :: Maybe LSPAny }
 deriving (Show,Eq)

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }
 deriving (Show,Eq)

data BaseInitializeParams = BaseInitializeParams { baseInitializeParamsProcessId :: Either Int ()
                                                 , baseInitializeParamsClientInfo :: Maybe ClientInfo
                                                 , baseInitializeParamsLocale :: Maybe String
                                                 , baseInitializeParamsRootPath :: Maybe (Either String ())
                                                 , baseInitializeParamsRootUri :: Either DocumentUri ()
                                                 , baseInitializeParamsCapabilities :: ClientCapabilities
                                                 , baseInitializeParamsInitializationOptions :: Maybe LSPAny
                                                 , baseInitializeParamsTrace :: Maybe TraceValue }
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
                                             , serverCapabilitiesInlineCompletionProvider :: Maybe (Either Bool InlineCompletionOptions)
                                             , serverCapabilitiesWorkspace :: Maybe WorkspaceOptions
                                             , serverCapabilitiesExperimental :: Maybe LSPAny }
 deriving (Show,Eq)

data ServerInfo = ServerInfo { serverInfoName :: String
                             , serverInfoVersion :: Maybe String }
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

data CompletionItemDefaults = CompletionItemDefaults { completionItemDefaultsCommitCharacters :: Maybe [String]
                                                     , completionItemDefaultsEditRange :: Maybe (Either Range EditRangeWithInsertReplace)
                                                     , completionItemDefaultsInsertTextFormat :: Maybe InsertTextFormat
                                                     , completionItemDefaultsInsertTextMode :: Maybe InsertTextMode
                                                     , completionItemDefaultsData :: Maybe LSPAny }
 deriving (Show,Eq)

data CompletionOptions = CompletionOptions { completionOptionsTriggerCharacters :: Maybe [String]
                                           , completionOptionsAllCommitCharacters :: Maybe [String]
                                           , completionOptionsResolveProvider :: Maybe Bool
                                           , completionOptionsCompletionItem :: Maybe ServerCompletionItemOptions }
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
                                                 , signatureInformationActiveParameter :: Maybe (Either Int ()) }
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

data CodeActionDisabled = CodeActionDisabled { codeActionDisabledReason :: String }
 deriving (Show,Eq)

data CodeActionOptions = CodeActionOptions { codeActionOptionsCodeActionKinds :: Maybe [CodeActionKind]
                                           , codeActionOptionsDocumentation :: Maybe [CodeActionKindDocumentation]
                                           , codeActionOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

data LocationUriOnly = LocationUriOnly { locationUriOnlyUri :: DocumentUri }
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

data DocumentRangeFormattingOptions = DocumentRangeFormattingOptions { documentRangeFormattingOptionsRangesSupport :: Maybe Bool }
 deriving (Show,Eq)

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter :: String
                                                                       , documentOnTypeFormattingOptionsMoreTriggerCharacter :: Maybe [String] }
 deriving (Show,Eq)

data RenameOptions = RenameOptions { renameOptionsPrepareProvider :: Maybe Bool }
 deriving (Show,Eq)

data PrepareRenamePlaceholder = PrepareRenamePlaceholder { prepareRenamePlaceholderRange :: Range
                                                         , prepareRenamePlaceholderPlaceholder :: String }
 deriving (Show,Eq)

data PrepareRenameDefaultBehavior = PrepareRenameDefaultBehavior { prepareRenameDefaultBehaviorDefaultBehavior :: Bool }
 deriving (Show,Eq)

data ExecuteCommandOptions = ExecuteCommandOptions { executeCommandOptionsCommands :: [String] }
 deriving (Show,Eq)

data WorkspaceEditMetadata = WorkspaceEditMetadata { workspaceEditMetadataIsRefactoring :: Maybe Bool }
 deriving (Show,Eq)

data SemanticTokensLegend = SemanticTokensLegend { semanticTokensLegendTokenTypes :: [String]
                                                 , semanticTokensLegendTokenModifiers :: [String] }
 deriving (Show,Eq)

data SemanticTokensFullDelta = SemanticTokensFullDelta { semanticTokensFullDeltaDelta :: Maybe Bool }
 deriving (Show,Eq)

data OptionalVersionedTextDocumentIdentifier = OptionalVersionedTextDocumentIdentifier { optionalVersionedTextDocumentIdentifierVersion :: Either Int () }
 deriving (Show,Eq)

data AnnotatedTextEdit = AnnotatedTextEdit { annotatedTextEditAnnotationId :: ChangeAnnotationIdentifier }
 deriving (Show,Eq)

data SnippetTextEdit = SnippetTextEdit { snippetTextEditRange :: Range
                                       , snippetTextEditSnippet :: StringValue
                                       , snippetTextEditAnnotationId :: Maybe ChangeAnnotationIdentifier }
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

data NotebookCell = NotebookCell { notebookCellKind :: NotebookCellKind
                                 , notebookCellDocument :: DocumentUri
                                 , notebookCellMetadata :: Maybe LSPObject
                                 , notebookCellExecutionSummary :: Maybe ExecutionSummary }
 deriving (Show,Eq)

data NotebookDocumentFilterWithNotebook = NotebookDocumentFilterWithNotebook { notebookDocumentFilterWithNotebookNotebook :: Either String NotebookDocumentFilter
                                                                             , notebookDocumentFilterWithNotebookCells :: Maybe [NotebookCellLanguage] }
 deriving (Show,Eq)

data NotebookDocumentFilterWithCells = NotebookDocumentFilterWithCells { notebookDocumentFilterWithCellsNotebook :: Maybe (Either String NotebookDocumentFilter)
                                                                       , notebookDocumentFilterWithCellsCells :: [NotebookCellLanguage] }
 deriving (Show,Eq)

data NotebookDocumentCellChanges = NotebookDocumentCellChanges { notebookDocumentCellChangesStructure :: Maybe NotebookDocumentCellChangeStructure
                                                               , notebookDocumentCellChangesData :: Maybe [NotebookCell]
                                                               , notebookDocumentCellChangesTextContent :: Maybe [NotebookDocumentCellContentChanges] }
 deriving (Show,Eq)

data SelectedCompletionInfo = SelectedCompletionInfo { selectedCompletionInfoRange :: Range
                                                     , selectedCompletionInfoText :: String }
 deriving (Show,Eq)

data ClientInfo = ClientInfo { clientInfoName :: String
                             , clientInfoVersion :: Maybe String }
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

data WorkspaceOptions = WorkspaceOptions { workspaceOptionsWorkspaceFolders :: Maybe WorkspaceFoldersServerCapabilities
                                         , workspaceOptionsFileOperations :: Maybe FileOperationOptions }
 deriving (Show,Eq)

data TextDocumentContentChangePartial = TextDocumentContentChangePartial { textDocumentContentChangePartialRange :: Range
                                                                         , textDocumentContentChangePartialRangeLength :: Maybe Int
                                                                         , textDocumentContentChangePartialText :: String }
 deriving (Show,Eq)

data TextDocumentContentChangeWholeDocument = TextDocumentContentChangeWholeDocument { textDocumentContentChangeWholeDocumentText :: String }
 deriving (Show,Eq)

data CodeDescription = CodeDescription { codeDescriptionHref :: Uri }
 deriving (Show,Eq)

data DiagnosticRelatedInformation = DiagnosticRelatedInformation { diagnosticRelatedInformationLocation :: Location
                                                                 , diagnosticRelatedInformationMessage :: String }
 deriving (Show,Eq)

data EditRangeWithInsertReplace = EditRangeWithInsertReplace { editRangeWithInsertReplaceInsert :: Range
                                                             , editRangeWithInsertReplaceReplace :: Range }
 deriving (Show,Eq)

data ServerCompletionItemOptions = ServerCompletionItemOptions { serverCompletionItemOptionsLabelDetailsSupport :: Maybe Bool }
 deriving (Show,Eq)

data MarkedStringWithLanguage = MarkedStringWithLanguage { markedStringWithLanguageLanguage :: String
                                                         , markedStringWithLanguageValue :: String }
 deriving (Show,Eq)

data ParameterInformation = ParameterInformation { parameterInformationLabel :: Either String (Int
                                                                                              ,Int)
                                                 , parameterInformationDocumentation :: Maybe (Either String MarkupContent) }
 deriving (Show,Eq)

data CodeActionKindDocumentation = CodeActionKindDocumentation { codeActionKindDocumentationKind :: CodeActionKind
                                                               , codeActionKindDocumentationCommand :: Command }
 deriving (Show,Eq)

data NotebookCellTextDocumentFilter = NotebookCellTextDocumentFilter { notebookCellTextDocumentFilterNotebook :: Either String NotebookDocumentFilter
                                                                     , notebookCellTextDocumentFilterLanguage :: Maybe String }
 deriving (Show,Eq)

data FileOperationPatternOptions = FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase :: Maybe Bool }
 deriving (Show,Eq)

data ExecutionSummary = ExecutionSummary { executionSummaryExecutionOrder :: Int
                                         , executionSummarySuccess :: Maybe Bool }
 deriving (Show,Eq)

data NotebookCellLanguage = NotebookCellLanguage { notebookCellLanguageLanguage :: String }
 deriving (Show,Eq)

data NotebookDocumentCellChangeStructure = NotebookDocumentCellChangeStructure { notebookDocumentCellChangeStructureArray :: NotebookCellArrayChange
                                                                               , notebookDocumentCellChangeStructureDidOpen :: Maybe [TextDocumentItem]
                                                                               , notebookDocumentCellChangeStructureDidClose :: Maybe [TextDocumentIdentifier] }
 deriving (Show,Eq)

data NotebookDocumentCellContentChanges = NotebookDocumentCellContentChanges { notebookDocumentCellContentChangesDocument :: VersionedTextDocumentIdentifier
                                                                             , notebookDocumentCellContentChangesChanges :: [TextDocumentContentChangeEvent] }
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
                                                               , workspaceClientCapabilitiesDiagnostics :: Maybe DiagnosticWorkspaceClientCapabilities
                                                               , workspaceClientCapabilitiesFoldingRange :: Maybe FoldingRangeWorkspaceClientCapabilities }
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
                                                                     , textDocumentClientCapabilitiesDiagnostic :: Maybe DiagnosticClientCapabilities
                                                                     , textDocumentClientCapabilitiesInlineCompletion :: Maybe InlineCompletionClientCapabilities }
 deriving (Show,Eq)

data NotebookDocumentClientCapabilities = NotebookDocumentClientCapabilities { notebookDocumentClientCapabilitiesSynchronization :: NotebookDocumentSyncClientCapabilities }
 deriving (Show,Eq)

data WindowClientCapabilities = WindowClientCapabilities { windowClientCapabilitiesWorkDoneProgress :: Maybe Bool
                                                         , windowClientCapabilitiesShowMessage :: Maybe ShowMessageRequestClientCapabilities
                                                         , windowClientCapabilitiesShowDocument :: Maybe ShowDocumentClientCapabilities }
 deriving (Show,Eq)

data GeneralClientCapabilities = GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport :: Maybe StaleRequestSupportOptions
                                                           , generalClientCapabilitiesRegularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , generalClientCapabilitiesMarkdown :: Maybe MarkdownClientCapabilities
                                                           , generalClientCapabilitiesPositionEncodings :: Maybe [PositionEncodingKind] }
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

data RelativePattern = RelativePattern { relativePatternBaseUri :: Either WorkspaceFolder Uri
                                       , relativePatternPattern :: Pattern }
 deriving (Show,Eq)

data TextDocumentFilterLanguage = TextDocumentFilterLanguage { textDocumentFilterLanguageLanguage :: String
                                                             , textDocumentFilterLanguageScheme :: Maybe String
                                                             , textDocumentFilterLanguagePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

data TextDocumentFilterScheme = TextDocumentFilterScheme { textDocumentFilterSchemeLanguage :: Maybe String
                                                         , textDocumentFilterSchemeScheme :: String
                                                         , textDocumentFilterSchemePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

data TextDocumentFilterPattern = TextDocumentFilterPattern { textDocumentFilterPatternLanguage :: Maybe String
                                                           , textDocumentFilterPatternScheme :: Maybe String
                                                           , textDocumentFilterPatternPattern :: GlobPattern }
 deriving (Show,Eq)

data NotebookDocumentFilterNotebookType = NotebookDocumentFilterNotebookType { notebookDocumentFilterNotebookTypeNotebookType :: String
                                                                             , notebookDocumentFilterNotebookTypeScheme :: Maybe String
                                                                             , notebookDocumentFilterNotebookTypePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

data NotebookDocumentFilterScheme = NotebookDocumentFilterScheme { notebookDocumentFilterSchemeNotebookType :: Maybe String
                                                                 , notebookDocumentFilterSchemeScheme :: String
                                                                 , notebookDocumentFilterSchemePattern :: Maybe GlobPattern }
 deriving (Show,Eq)

data NotebookDocumentFilterPattern = NotebookDocumentFilterPattern { notebookDocumentFilterPatternNotebookType :: Maybe String
                                                                   , notebookDocumentFilterPatternScheme :: Maybe String
                                                                   , notebookDocumentFilterPatternPattern :: GlobPattern }
 deriving (Show,Eq)

data NotebookCellArrayChange = NotebookCellArrayChange { notebookCellArrayChangeStart :: Int
                                                       , notebookCellArrayChangeDeleteCount :: Int
                                                       , notebookCellArrayChangeCells :: Maybe [NotebookCell] }
 deriving (Show,Eq)

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesResourceOperations :: Maybe [ResourceOperationKind]
                                                                       , workspaceEditClientCapabilitiesFailureHandling :: Maybe FailureHandlingKind
                                                                       , workspaceEditClientCapabilitiesNormalizesLineEndings :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesChangeAnnotationSupport :: Maybe ChangeAnnotationsSupportOptions
                                                                       , workspaceEditClientCapabilitiesMetadataSupport :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesSnippetEditSupport :: Maybe Bool }
 deriving (Show,Eq)

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DidChangeWatchedFilesClientCapabilities = DidChangeWatchedFilesClientCapabilities { didChangeWatchedFilesClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                       , didChangeWatchedFilesClientCapabilitiesRelativePatternSupport :: Maybe Bool }
 deriving (Show,Eq)

data WorkspaceSymbolClientCapabilities = WorkspaceSymbolClientCapabilities { workspaceSymbolClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                           , workspaceSymbolClientCapabilitiesSymbolKind :: Maybe ClientSymbolKindOptions
                                                                           , workspaceSymbolClientCapabilitiesTagSupport :: Maybe ClientSymbolTagOptions
                                                                           , workspaceSymbolClientCapabilitiesResolveSupport :: Maybe ClientSymbolResolveOptions }
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

data FoldingRangeWorkspaceClientCapabilities = FoldingRangeWorkspaceClientCapabilities { foldingRangeWorkspaceClientCapabilitiesRefreshSupport :: Maybe Bool }
 deriving (Show,Eq)

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSave :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSaveWaitUntil :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesDidSave :: Maybe Bool }
 deriving (Show,Eq)

data CompletionClientCapabilities = CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionItem :: Maybe ClientCompletionItemOptions
                                                                 , completionClientCapabilitiesCompletionItemKind :: Maybe ClientCompletionItemOptionsKind
                                                                 , completionClientCapabilitiesInsertTextMode :: Maybe InsertTextMode
                                                                 , completionClientCapabilitiesContextSupport :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionList :: Maybe CompletionListCapabilities }
 deriving (Show,Eq)

data HoverClientCapabilities = HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                       , hoverClientCapabilitiesContentFormat :: Maybe [MarkupKind] }
 deriving (Show,Eq)

data SignatureHelpClientCapabilities = SignatureHelpClientCapabilities { signatureHelpClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , signatureHelpClientCapabilitiesSignatureInformation :: Maybe ClientSignatureInformationOptions
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
                                                                         , documentSymbolClientCapabilitiesSymbolKind :: Maybe ClientSymbolKindOptions
                                                                         , documentSymbolClientCapabilitiesHierarchicalDocumentSymbolSupport :: Maybe Bool
                                                                         , documentSymbolClientCapabilitiesTagSupport :: Maybe ClientSymbolTagOptions
                                                                         , documentSymbolClientCapabilitiesLabelSupport :: Maybe Bool }
 deriving (Show,Eq)

data CodeActionClientCapabilities = CodeActionClientCapabilities { codeActionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , codeActionClientCapabilitiesCodeActionLiteralSupport :: Maybe ClientCodeActionLiteralOptions
                                                                 , codeActionClientCapabilitiesIsPreferredSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDisabledSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDataSupport :: Maybe Bool
                                                                 , codeActionClientCapabilitiesResolveSupport :: Maybe ClientCodeActionResolveOptions
                                                                 , codeActionClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool
                                                                 , codeActionClientCapabilitiesDocumentationSupport :: Maybe Bool }
 deriving (Show,Eq)

data CodeLensClientCapabilities = CodeLensClientCapabilities { codeLensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                             , codeLensClientCapabilitiesResolveSupport :: Maybe ClientCodeLensResolveOptions }
 deriving (Show,Eq)

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , documentLinkClientCapabilitiesTooltipSupport :: Maybe Bool }
 deriving (Show,Eq)

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities { documentFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities { documentRangeFormattingClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                           , documentRangeFormattingClientCapabilitiesRangesSupport :: Maybe Bool }
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
                                                                     , foldingRangeClientCapabilitiesFoldingRangeKind :: Maybe ClientFoldingRangeKindOptions
                                                                     , foldingRangeClientCapabilitiesFoldingRange :: Maybe ClientFoldingRangeOptions }
 deriving (Show,Eq)

data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities { selectionRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesVersionSupport :: Maybe Bool }
 deriving (Show,Eq)

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesRequests :: ClientSemanticTokensRequestOptions
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
                                                               , inlayHintClientCapabilitiesResolveSupport :: Maybe ClientInlayHintResolveOptions }
 deriving (Show,Eq)

data DiagnosticClientCapabilities = DiagnosticClientCapabilities { diagnosticClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , diagnosticClientCapabilitiesRelatedDocumentSupport :: Maybe Bool }
 deriving (Show,Eq)

data InlineCompletionClientCapabilities = InlineCompletionClientCapabilities { inlineCompletionClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities { notebookDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                                     , notebookDocumentSyncClientCapabilitiesExecutionSummarySupport :: Maybe Bool }
 deriving (Show,Eq)

data ShowMessageRequestClientCapabilities = ShowMessageRequestClientCapabilities { showMessageRequestClientCapabilitiesMessageActionItem :: Maybe ClientShowMessageActionItemOptions }
 deriving (Show,Eq)

data ShowDocumentClientCapabilities = ShowDocumentClientCapabilities { showDocumentClientCapabilitiesSupport :: Bool }
 deriving (Show,Eq)

data StaleRequestSupportOptions = StaleRequestSupportOptions { staleRequestSupportOptionsCancel :: Bool
                                                             , staleRequestSupportOptionsRetryOnContentModified :: [String] }
 deriving (Show,Eq)

data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities { regularExpressionsClientCapabilitiesEngine :: RegularExpressionEngineKind
                                                                                 , regularExpressionsClientCapabilitiesVersion :: Maybe String }
 deriving (Show,Eq)

data MarkdownClientCapabilities = MarkdownClientCapabilities { markdownClientCapabilitiesParser :: String
                                                             , markdownClientCapabilitiesVersion :: Maybe String
                                                             , markdownClientCapabilitiesAllowedTags :: Maybe [String] }
 deriving (Show,Eq)

data ChangeAnnotationsSupportOptions = ChangeAnnotationsSupportOptions { changeAnnotationsSupportOptionsGroupsOnLabel :: Maybe Bool }
 deriving (Show,Eq)

data ClientSymbolKindOptions = ClientSymbolKindOptions { clientSymbolKindOptionsValueSet :: Maybe [SymbolKind] }
 deriving (Show,Eq)

data ClientSymbolTagOptions = ClientSymbolTagOptions { clientSymbolTagOptionsValueSet :: [SymbolTag] }
 deriving (Show,Eq)

data ClientSymbolResolveOptions = ClientSymbolResolveOptions { clientSymbolResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

data ClientCompletionItemOptions = ClientCompletionItemOptions { clientCompletionItemOptionsSnippetSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsCommitCharactersSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsDocumentationFormat :: Maybe [MarkupKind]
                                                               , clientCompletionItemOptionsDeprecatedSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsPreselectSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsTagSupport :: Maybe CompletionItemTagOptions
                                                               , clientCompletionItemOptionsInsertReplaceSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsResolveSupport :: Maybe ClientCompletionItemResolveOptions
                                                               , clientCompletionItemOptionsInsertTextModeSupport :: Maybe ClientCompletionItemInsertTextModeOptions
                                                               , clientCompletionItemOptionsLabelDetailsSupport :: Maybe Bool }
 deriving (Show,Eq)

data ClientCompletionItemOptionsKind = ClientCompletionItemOptionsKind { clientCompletionItemOptionsKindValueSet :: Maybe [CompletionItemKind] }
 deriving (Show,Eq)

data CompletionListCapabilities = CompletionListCapabilities { completionListCapabilitiesItemDefaults :: Maybe [String] }
 deriving (Show,Eq)

data ClientSignatureInformationOptions = ClientSignatureInformationOptions { clientSignatureInformationOptionsDocumentationFormat :: Maybe [MarkupKind]
                                                                           , clientSignatureInformationOptionsParameterInformation :: Maybe ClientSignatureParameterInformationOptions
                                                                           , clientSignatureInformationOptionsActiveParameterSupport :: Maybe Bool
                                                                           , clientSignatureInformationOptionsNoActiveParameterSupport :: Maybe Bool }
 deriving (Show,Eq)

data ClientCodeActionLiteralOptions = ClientCodeActionLiteralOptions { clientCodeActionLiteralOptionsCodeActionKind :: ClientCodeActionKindOptions }
 deriving (Show,Eq)

data ClientCodeActionResolveOptions = ClientCodeActionResolveOptions { clientCodeActionResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

data ClientCodeLensResolveOptions = ClientCodeLensResolveOptions { clientCodeLensResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

data ClientFoldingRangeKindOptions = ClientFoldingRangeKindOptions { clientFoldingRangeKindOptionsValueSet :: Maybe [FoldingRangeKind] }
 deriving (Show,Eq)

data ClientFoldingRangeOptions = ClientFoldingRangeOptions { clientFoldingRangeOptionsCollapsedText :: Maybe Bool }
 deriving (Show,Eq)

data DiagnosticsCapabilities = DiagnosticsCapabilities { diagnosticsCapabilitiesRelatedInformation :: Maybe Bool
                                                       , diagnosticsCapabilitiesTagSupport :: Maybe ClientDiagnosticsTagOptions
                                                       , diagnosticsCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                       , diagnosticsCapabilitiesDataSupport :: Maybe Bool }
 deriving (Show,Eq)

data ClientSemanticTokensRequestOptions = ClientSemanticTokensRequestOptions { clientSemanticTokensRequestOptionsRange :: Maybe (Either Bool ())
                                                                             , clientSemanticTokensRequestOptionsFull :: Maybe (Either Bool ClientSemanticTokensRequestFullDelta) }
 deriving (Show,Eq)

data ClientInlayHintResolveOptions = ClientInlayHintResolveOptions { clientInlayHintResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

data ClientShowMessageActionItemOptions = ClientShowMessageActionItemOptions { clientShowMessageActionItemOptionsAdditionalPropertiesSupport :: Maybe Bool }
 deriving (Show,Eq)

data CompletionItemTagOptions = CompletionItemTagOptions { completionItemTagOptionsValueSet :: [CompletionItemTag] }
 deriving (Show,Eq)

data ClientCompletionItemResolveOptions = ClientCompletionItemResolveOptions { clientCompletionItemResolveOptionsProperties :: [String] }
 deriving (Show,Eq)

data ClientCompletionItemInsertTextModeOptions = ClientCompletionItemInsertTextModeOptions { clientCompletionItemInsertTextModeOptionsValueSet :: [InsertTextMode] }
 deriving (Show,Eq)

data ClientSignatureParameterInformationOptions = ClientSignatureParameterInformationOptions { clientSignatureParameterInformationOptionsLabelOffsetSupport :: Maybe Bool }
 deriving (Show,Eq)

data ClientCodeActionKindOptions = ClientCodeActionKindOptions { clientCodeActionKindOptionsValueSet :: [CodeActionKind] }
 deriving (Show,Eq)

data ClientDiagnosticsTagOptions = ClientDiagnosticsTagOptions { clientDiagnosticsTagOptionsValueSet :: [DiagnosticTag] }
 deriving (Show,Eq)

data ClientSemanticTokensRequestFullDelta = ClientSemanticTokensRequestFullDelta { clientSemanticTokensRequestFullDeltaDelta :: Maybe Bool }
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
                        | SemanticTokenTypesLabel
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

data DocumentDiagnosticReportKind = DocumentDiagnosticReportKindFull
                                  | DocumentDiagnosticReportKindUnchanged
 deriving (Show,Eq,Enum,Bounded,Ord)

data ErrorCodes = ErrorCodesParseError
                | ErrorCodesInvalidRequest
                | ErrorCodesMethodNotFound
                | ErrorCodesInvalidParams
                | ErrorCodesInternalError
                | ErrorCodesServerNotInitialized
                | ErrorCodesUnknownErrorCode
 deriving (Show,Eq,Enum,Bounded,Ord)

data LSPErrorCodes = LSPErrorCodesRequestFailed
                   | LSPErrorCodesServerCancelled
                   | LSPErrorCodesContentModified
                   | LSPErrorCodesRequestCancelled
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
                 | MessageTypeDebug
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
                    | CodeActionKindRefactorMove
                    | CodeActionKindRefactorRewrite
                    | CodeActionKindSource
                    | CodeActionKindSourceOrganizeImports
                    | CodeActionKindSourceFixAll
                    | CodeActionKindNotebook
 deriving (Show,Eq,Enum,Bounded,Ord)

data TraceValue = TraceValueOff | TraceValueMessages | TraceValueVerbose
 deriving (Show,Eq,Enum,Bounded,Ord)

data MarkupKind = MarkupKindPlainText | MarkupKindMarkdown
 deriving (Show,Eq,Enum,Bounded,Ord)

data LanguageKind = LanguageKindABAP
                  | LanguageKindWindowsBat
                  | LanguageKindBibTeX
                  | LanguageKindClojure
                  | LanguageKindCoffeescript
                  | LanguageKindC
                  | LanguageKindCPP
                  | LanguageKindCSharp
                  | LanguageKindCSS
                  | LanguageKindD
                  | LanguageKindDelphi
                  | LanguageKindDiff
                  | LanguageKindDart
                  | LanguageKindDockerfile
                  | LanguageKindElixir
                  | LanguageKindErlang
                  | LanguageKindFSharp
                  | LanguageKindGitCommit
                  | LanguageKindGitRebase
                  | LanguageKindGo
                  | LanguageKindGroovy
                  | LanguageKindHandlebars
                  | LanguageKindHaskell
                  | LanguageKindHTML
                  | LanguageKindIni
                  | LanguageKindJava
                  | LanguageKindJavaScript
                  | LanguageKindJavaScriptReact
                  | LanguageKindJSON
                  | LanguageKindLaTeX
                  | LanguageKindLess
                  | LanguageKindLua
                  | LanguageKindMakefile
                  | LanguageKindMarkdown
                  | LanguageKindObjectiveC
                  | LanguageKindObjectiveCPP
                  | LanguageKindPascal
                  | LanguageKindPerl
                  | LanguageKindPerl6
                  | LanguageKindPHP
                  | LanguageKindPowershell
                  | LanguageKindPug
                  | LanguageKindPython
                  | LanguageKindR
                  | LanguageKindRazor
                  | LanguageKindRuby
                  | LanguageKindRust
                  | LanguageKindSCSS
                  | LanguageKindSASS
                  | LanguageKindScala
                  | LanguageKindShaderLab
                  | LanguageKindShellScript
                  | LanguageKindSQL
                  | LanguageKindSwift
                  | LanguageKindTypeScript
                  | LanguageKindTypeScriptReact
                  | LanguageKindTeX
                  | LanguageKindVisualBasic
                  | LanguageKindXML
                  | LanguageKindXSL
                  | LanguageKindYAML
 deriving (Show,Eq,Enum,Bounded,Ord)

data InlineCompletionTriggerKind = InlineCompletionTriggerKindInvoked
                                 | InlineCompletionTriggerKindAutomatic
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

type PrepareRenameResult = Either (Either Range PrepareRenamePlaceholder) PrepareRenameDefaultBehavior

type DocumentSelector = [DocumentFilter]

type ProgressToken = Either Int String

type ChangeAnnotationIdentifier = String

type WorkspaceDocumentDiagnosticReport = Either WorkspaceFullDocumentDiagnosticReport WorkspaceUnchangedDocumentDiagnosticReport

type TextDocumentContentChangeEvent = Either TextDocumentContentChangePartial TextDocumentContentChangeWholeDocument

type MarkedString = Either String MarkedStringWithLanguage

type DocumentFilter = Either TextDocumentFilter NotebookCellTextDocumentFilter

type LSPObject = Map String LSPAny

type GlobPattern = Either Pattern RelativePattern

type TextDocumentFilter = Either (Either TextDocumentFilterLanguage TextDocumentFilterScheme) TextDocumentFilterPattern

type NotebookDocumentFilter = Either (Either NotebookDocumentFilterNotebookType NotebookDocumentFilterScheme) NotebookDocumentFilterPattern

type Pattern = String

type RegularExpressionEngineKind = String

