-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionList where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.InlineCompletionItem
import LSP.Utils.JSON

instance FromJSON InlineCompletionList where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedItems <- lookupFromJSON "items" vs
           return
            InlineCompletionList { inlineCompletionListItems = parsedItems }
      _ -> Left ("Unrecognized InlineCompletionList value: " ++ ppJSON j)

instance ToJSON InlineCompletionList where
  toJSON x = object [(.=) "items" (inlineCompletionListItems x)]

data InlineCompletionList = InlineCompletionList { inlineCompletionListItems :: [InlineCompletionItem] }
 deriving (Show,Eq)

