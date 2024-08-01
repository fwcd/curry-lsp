-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionList where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionItem
import LSP.Protocol.Types.CompletionItemDefaults
import LSP.Utils.JSON

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

data CompletionList = CompletionList { completionListIsIncomplete :: Bool
                                     , completionListItemDefaults :: Maybe CompletionItemDefaults
                                     , completionListItems :: [CompletionItem] }
 deriving (Show,Eq)

