-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionTriggerKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeActionTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right CodeActionTriggerKindInvoked
         2 -> Right CodeActionTriggerKindAutomatic
         _ -> Left ("Unrecognized CodeActionTriggerKind value: " ++ ppJSON j)

instance ToJSON CodeActionTriggerKind where
  toJSON x =
    case x of
      CodeActionTriggerKindInvoked -> toJSON 1
      CodeActionTriggerKindAutomatic -> toJSON 2

data CodeActionTriggerKind = CodeActionTriggerKindInvoked
                           | CodeActionTriggerKindAutomatic
 deriving (Show,Eq,Enum,Bounded,Ord)

