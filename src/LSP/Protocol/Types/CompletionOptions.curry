-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ServerCompletionItemOptions
import LSP.Utils.JSON

instance FromJSON CompletionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedAllCommitCharacters <- lookupMaybeFromJSON
                                         "allCommitCharacters"
                                         vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           return
            CompletionOptions { completionOptionsTriggerCharacters = parsedTriggerCharacters
                              , completionOptionsAllCommitCharacters = parsedAllCommitCharacters
                              , completionOptionsResolveProvider = parsedResolveProvider
                              , completionOptionsCompletionItem = parsedCompletionItem }
      _ -> Left ("Unrecognized CompletionOptions value: " ++ ppJSON j)

data CompletionOptions = CompletionOptions { completionOptionsTriggerCharacters :: Maybe [String]
                                           , completionOptionsAllCommitCharacters :: Maybe [String]
                                           , completionOptionsResolveProvider :: Maybe Bool
                                           , completionOptionsCompletionItem :: Maybe ServerCompletionItemOptions }
 deriving (Show,Eq)

