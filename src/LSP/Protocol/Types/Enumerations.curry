-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Enumerations where

import LSP.Utils.JSON
import LSP.Protocol.Support
import Data.Map
import JSON.Data
import JSON.Pretty

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

instance FromJSON ErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         -32700 -> Right ErrorCodesParseError
         -32600 -> Right ErrorCodesInvalidRequest
         -32601 -> Right ErrorCodesMethodNotFound
         -32602 -> Right ErrorCodesInvalidParams
         -32603 -> Right ErrorCodesInternalError
         -32099 -> Right ErrorCodesJsonrpcReservedErrorRangeStart
         -32099 -> Right ErrorCodesServerErrorStart
         -32002 -> Right ErrorCodesServerNotInitialized
         -32001 -> Right ErrorCodesUnknownErrorCode
         -32000 -> Right ErrorCodesJsonrpcReservedErrorRangeEnd
         -32000 -> Right ErrorCodesServerErrorEnd
         _ -> Left ("Unrecognized ErrorCodes value: " ++ ppJSON j)

instance FromJSON LSPErrorCodes where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         -32899 -> Right LSPErrorCodesLspReservedErrorRangeStart
         -32803 -> Right LSPErrorCodesRequestFailed
         -32802 -> Right LSPErrorCodesServerCancelled
         -32801 -> Right LSPErrorCodesContentModified
         -32800 -> Right LSPErrorCodesRequestCancelled
         -32800 -> Right LSPErrorCodesLspReservedErrorRangeEnd
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
         "refactor.rewrite" -> Right CodeActionKindRefactorRewrite
         "source" -> Right CodeActionKindSource
         "source.organizeImports" -> Right CodeActionKindSourceOrganizeImports
         "source.fixAll" -> Right CodeActionKindSourceFixAll
         _ -> Left ("Unrecognized CodeActionKind value: " ++ ppJSON j)

instance FromJSON TraceValues where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "off" -> Right TraceValuesOff
         "messages" -> Right TraceValuesMessages
         "verbose" -> Right TraceValuesVerbose
         _ -> Left ("Unrecognized TraceValues value: " ++ ppJSON j)

instance FromJSON MarkupKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "plaintext" -> Right MarkupKindPlainText
         "markdown" -> Right MarkupKindMarkdown
         _ -> Left ("Unrecognized MarkupKind value: " ++ ppJSON j)

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
