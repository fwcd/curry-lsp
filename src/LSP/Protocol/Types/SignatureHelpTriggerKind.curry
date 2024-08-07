-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpTriggerKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SignatureHelpTriggerKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right SignatureHelpTriggerKindInvoked
         2 -> Right SignatureHelpTriggerKindTriggerCharacter
         3 -> Right SignatureHelpTriggerKindContentChange
         _ ->
           Left ("Unrecognized SignatureHelpTriggerKind value: " ++ ppJSON j)

instance ToJSON SignatureHelpTriggerKind where
  toJSON x =
    case x of
      SignatureHelpTriggerKindInvoked -> toJSON 1
      SignatureHelpTriggerKindTriggerCharacter -> toJSON 2
      SignatureHelpTriggerKindContentChange -> toJSON 3

instance Default SignatureHelpTriggerKind where
  def = SignatureHelpTriggerKindInvoked

data SignatureHelpTriggerKind = SignatureHelpTriggerKindInvoked
                              | SignatureHelpTriggerKindTriggerCharacter
                              | SignatureHelpTriggerKindContentChange
 deriving (Show,Eq,Enum,Bounded,Ord)

