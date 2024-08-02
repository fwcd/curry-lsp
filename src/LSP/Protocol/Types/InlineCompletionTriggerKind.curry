-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineCompletionTriggerKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InlineCompletionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right InlineCompletionTriggerKindInvoked
         2 -> Right InlineCompletionTriggerKindAutomatic
         _ ->
           Left
            ("Unrecognized InlineCompletionTriggerKind value: " ++ ppJSON j)

instance ToJSON InlineCompletionTriggerKind where
  toJSON x =
    case x of
      InlineCompletionTriggerKindInvoked -> toJSON 1
      InlineCompletionTriggerKindAutomatic -> toJSON 2

instance Default InlineCompletionTriggerKind where
  def = InlineCompletionTriggerKindInvoked

data InlineCompletionTriggerKind = InlineCompletionTriggerKindInvoked
                                 | InlineCompletionTriggerKindAutomatic
 deriving (Show,Eq,Enum,Bounded,Ord)

