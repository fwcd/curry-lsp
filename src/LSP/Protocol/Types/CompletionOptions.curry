-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ServerCompletionItemOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedAllCommitCharacters <- lookupMaybeFromJSON
                                         "allCommitCharacters"
                                         vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           return
            CompletionOptions { completionOptionsWorkDoneProgress = parsedWorkDoneProgress
                              , completionOptionsTriggerCharacters = parsedTriggerCharacters
                              , completionOptionsAllCommitCharacters = parsedAllCommitCharacters
                              , completionOptionsResolveProvider = parsedResolveProvider
                              , completionOptionsCompletionItem = parsedCompletionItem }
      _ -> Left ("Unrecognized CompletionOptions value: " ++ ppJSON j)

instance ToJSON CompletionOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (completionOptionsWorkDoneProgress x),  (.?=)
                                                                        "triggerCharacters"
                                                                        (completionOptionsTriggerCharacters
                                                                          x),  (.?=)
                                                                                "allCommitCharacters"
                                                                                (completionOptionsAllCommitCharacters
                                                                                  x),  (.?=)
                                                                                        "resolveProvider"
                                                                                        (completionOptionsResolveProvider
                                                                                          x),  (.?=)
                                                                                                "completionItem"
                                                                                                (completionOptionsCompletionItem
                                                                                                  x)]

instance Default CompletionOptions where
  def =
    CompletionOptions { completionOptionsWorkDoneProgress = def
                      , completionOptionsTriggerCharacters = def
                      , completionOptionsAllCommitCharacters = def
                      , completionOptionsResolveProvider = def
                      , completionOptionsCompletionItem = def }

data CompletionOptions = CompletionOptions { completionOptionsWorkDoneProgress :: Maybe Bool
                                           , completionOptionsTriggerCharacters :: Maybe [String]
                                           , completionOptionsAllCommitCharacters :: Maybe [String]
                                           , completionOptionsResolveProvider :: Maybe Bool
                                           , completionOptionsCompletionItem :: Maybe ServerCompletionItemOptions }
 deriving (Show,Eq)

