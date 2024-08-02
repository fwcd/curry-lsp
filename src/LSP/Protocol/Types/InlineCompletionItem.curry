-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionItem where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Command
import LSP.Protocol.Types.Range
import LSP.Protocol.Types.StringValue
import LSP.Utils.Default
import LSP.Utils.JSON

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

instance ToJSON InlineCompletionItem where
  toJSON x =
    object
     [(.=) "insertText" (inlineCompletionItemInsertText x),  (.?=)
                                                              "filterText"
                                                              (inlineCompletionItemFilterText
                                                                x),  (.?=)
                                                                      "range"
                                                                      (inlineCompletionItemRange
                                                                        x),  (.?=)
                                                                              "command"
                                                                              (inlineCompletionItemCommand
                                                                                x)]

instance Default InlineCompletionItem where
  def =
    InlineCompletionItem { inlineCompletionItemInsertText = def
                         , inlineCompletionItemFilterText = def
                         , inlineCompletionItemRange = def
                         , inlineCompletionItemCommand = def }

data InlineCompletionItem = InlineCompletionItem { inlineCompletionItemInsertText :: Either String StringValue
                                                 , inlineCompletionItemFilterText :: Maybe String
                                                 , inlineCompletionItemRange :: Maybe Range
                                                 , inlineCompletionItemCommand :: Maybe Command }
 deriving (Show,Eq)

