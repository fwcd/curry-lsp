-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Command
import LSP.Protocol.Types.CompletionItemKind
import LSP.Protocol.Types.CompletionItemLabelDetails
import LSP.Protocol.Types.CompletionItemTag
import LSP.Protocol.Types.InsertReplaceEdit
import LSP.Protocol.Types.InsertTextFormat
import LSP.Protocol.Types.InsertTextMode
import LSP.Protocol.Types.MarkupContent
import LSP.Protocol.Types.TextEdit
import LSP.Utils.Default
import LSP.Utils.JSON

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

instance ToJSON CompletionItem where
  toJSON x =
    object
     [(.=) "label" (completionItemLabel x),  (.?=) "labelDetails"
                                              (completionItemLabelDetails
                                                x),  (.?=) "kind"
                                                      (completionItemKind
                                                        x),  (.?=) "tags"
                                                              (completionItemTags
                                                                x),  (.?=)
                                                                      "detail"
                                                                      (completionItemDetail
                                                                        x),  (.?=)
                                                                              "documentation"
                                                                              (completionItemDocumentation
                                                                                x),  (.?=)
                                                                                      "deprecated"
                                                                                      (completionItemDeprecated
                                                                                        x),  (.?=)
                                                                                              "preselect"
                                                                                              (completionItemPreselect
                                                                                                x),  (.?=)
                                                                                                      "sortText"
                                                                                                      (completionItemSortText
                                                                                                        x),  (.?=)
                                                                                                              "filterText"
                                                                                                              (completionItemFilterText
                                                                                                                x),  (.?=)
                                                                                                                      "insertText"
                                                                                                                      (completionItemInsertText
                                                                                                                        x),  (.?=)
                                                                                                                              "insertTextFormat"
                                                                                                                              (completionItemInsertTextFormat
                                                                                                                                x),  (.?=)
                                                                                                                                      "insertTextMode"
                                                                                                                                      (completionItemInsertTextMode
                                                                                                                                        x),  (.?=)
                                                                                                                                              "textEdit"
                                                                                                                                              (completionItemTextEdit
                                                                                                                                                x),  (.?=)
                                                                                                                                                      "textEditText"
                                                                                                                                                      (completionItemTextEditText
                                                                                                                                                        x),  (.?=)
                                                                                                                                                              "additionalTextEdits"
                                                                                                                                                              (completionItemAdditionalTextEdits
                                                                                                                                                                x),  (.?=)
                                                                                                                                                                      "commitCharacters"
                                                                                                                                                                      (completionItemCommitCharacters
                                                                                                                                                                        x),  (.?=)
                                                                                                                                                                              "command"
                                                                                                                                                                              (completionItemCommand
                                                                                                                                                                                x),  (.?=)
                                                                                                                                                                                      "data"
                                                                                                                                                                                      (completionItemData
                                                                                                                                                                                        x)]

instance Default CompletionItem where
  def =
    CompletionItem { completionItemLabel = def
                   , completionItemLabelDetails = def
                   , completionItemKind = def
                   , completionItemTags = def
                   , completionItemDetail = def
                   , completionItemDocumentation = def
                   , completionItemDeprecated = def
                   , completionItemPreselect = def
                   , completionItemSortText = def
                   , completionItemFilterText = def
                   , completionItemInsertText = def
                   , completionItemInsertTextFormat = def
                   , completionItemInsertTextMode = def
                   , completionItemTextEdit = def
                   , completionItemTextEditText = def
                   , completionItemAdditionalTextEdits = def
                   , completionItemCommitCharacters = def
                   , completionItemCommand = def
                   , completionItemData = def }

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

