-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemDefaults where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.EditRangeWithInsertReplace
import LSP.Protocol.Types.InsertTextFormat
import LSP.Protocol.Types.InsertTextMode
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

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

data CompletionItemDefaults = CompletionItemDefaults { completionItemDefaultsCommitCharacters :: Maybe [String]
                                                     , completionItemDefaultsEditRange :: Maybe (Either Range EditRangeWithInsertReplace)
                                                     , completionItemDefaultsInsertTextFormat :: Maybe InsertTextFormat
                                                     , completionItemDefaultsInsertTextMode :: Maybe InsertTextMode
                                                     , completionItemDefaultsData :: Maybe LSPAny }
 deriving (Show,Eq)

