-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionItemTagOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionItemTag
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionItemTagOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedValueSet <- lookupFromJSON "valueSet" vs
           return
            CompletionItemTagOptions { completionItemTagOptionsValueSet = parsedValueSet }
      _ -> Left ("Unrecognized CompletionItemTagOptions value: " ++ ppJSON j)

instance ToJSON CompletionItemTagOptions where
  toJSON x = object [(.=) "valueSet" (completionItemTagOptionsValueSet x)]

instance Default CompletionItemTagOptions where
  def = CompletionItemTagOptions { completionItemTagOptionsValueSet = def }

data CompletionItemTagOptions = CompletionItemTagOptions { completionItemTagOptionsValueSet :: [CompletionItemTag] }
 deriving (Show,Eq)

