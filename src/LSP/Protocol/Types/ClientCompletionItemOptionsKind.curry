-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCompletionItemOptionsKind where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionItemKind
import LSP.Utils.JSON

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

instance ToJSON ClientCompletionItemOptionsKind where
  toJSON x =
    object [(.?=) "valueSet" (clientCompletionItemOptionsKindValueSet x)]

data ClientCompletionItemOptionsKind = ClientCompletionItemOptionsKind { clientCompletionItemOptionsKindValueSet :: Maybe [CompletionItemKind] }
 deriving (Show,Eq)

