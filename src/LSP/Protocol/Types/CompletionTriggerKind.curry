-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionTriggerKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CompletionTriggerKindInvoked
         2 -> Right CompletionTriggerKindTriggerCharacter
         3 -> Right CompletionTriggerKindTriggerForIncompleteCompletions
         _ -> Left ("Unrecognized CompletionTriggerKind value: " ++ ppJSON j)

instance ToJSON CompletionTriggerKind where
  toJSON x =
    case x of
      CompletionTriggerKindInvoked -> toJSON 1
      CompletionTriggerKindTriggerCharacter -> toJSON 2
      CompletionTriggerKindTriggerForIncompleteCompletions -> toJSON 3

instance Default CompletionTriggerKind where
  def = CompletionTriggerKindInvoked

data CompletionTriggerKind = CompletionTriggerKindInvoked
                           | CompletionTriggerKindTriggerCharacter
                           | CompletionTriggerKindTriggerForIncompleteCompletions
 deriving (Show,Eq,Enum,Bounded,Ord)

