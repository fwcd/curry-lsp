-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Protocol.Types.ServerCompletionItemOptions
import LSP.Utils.JSON

instance FromJSON CompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedAllCommitCharacters <- lookupMaybeFromJSON
                                         "allCommitCharacters"
                                         vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           return
            CompletionRegistrationOptions { completionRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                          , completionRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                          , completionRegistrationOptionsTriggerCharacters = parsedTriggerCharacters
                                          , completionRegistrationOptionsAllCommitCharacters = parsedAllCommitCharacters
                                          , completionRegistrationOptionsResolveProvider = parsedResolveProvider
                                          , completionRegistrationOptionsCompletionItem = parsedCompletionItem }
      _ ->
        Left
         ("Unrecognized CompletionRegistrationOptions value: " ++ ppJSON j)

instance ToJSON CompletionRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (completionRegistrationOptionsDocumentSelector x),  (.?=)
                                                            "workDoneProgress"
                                                            (completionRegistrationOptionsWorkDoneProgress
                                                              x),  (.?=)
                                                                    "triggerCharacters"
                                                                    (completionRegistrationOptionsTriggerCharacters
                                                                      x),  (.?=)
                                                                            "allCommitCharacters"
                                                                            (completionRegistrationOptionsAllCommitCharacters
                                                                              x),  (.?=)
                                                                                    "resolveProvider"
                                                                                    (completionRegistrationOptionsResolveProvider
                                                                                      x),  (.?=)
                                                                                            "completionItem"
                                                                                            (completionRegistrationOptionsCompletionItem
                                                                                              x)]

data CompletionRegistrationOptions = CompletionRegistrationOptions { completionRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                   , completionRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                   , completionRegistrationOptionsTriggerCharacters :: Maybe [String]
                                                                   , completionRegistrationOptionsAllCommitCharacters :: Maybe [String]
                                                                   , completionRegistrationOptionsResolveProvider :: Maybe Bool
                                                                   , completionRegistrationOptionsCompletionItem :: Maybe ServerCompletionItemOptions }
 deriving (Show,Eq)

