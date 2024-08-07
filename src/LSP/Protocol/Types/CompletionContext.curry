-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.CompletionTriggerKind
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedTriggerCharacter <- lookupMaybeFromJSON "triggerCharacter" vs
           return
            CompletionContext { completionContextTriggerKind = parsedTriggerKind
                              , completionContextTriggerCharacter = parsedTriggerCharacter }
      _ -> Left ("Unrecognized CompletionContext value: " ++ ppJSON j)

instance ToJSON CompletionContext where
  toJSON x =
    object
     [(.=) "triggerKind" (completionContextTriggerKind x),  (.?=)
                                                             "triggerCharacter"
                                                             (completionContextTriggerCharacter
                                                               x)]

instance Default CompletionContext where
  def =
    CompletionContext { completionContextTriggerKind = def
                      , completionContextTriggerCharacter = def }

data CompletionContext = CompletionContext { completionContextTriggerKind :: CompletionTriggerKind
                                           , completionContextTriggerCharacter :: Maybe String }
 deriving (Show,Eq)

