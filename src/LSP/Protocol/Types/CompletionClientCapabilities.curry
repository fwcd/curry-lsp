-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientCompletionItemOptions
import LSP.Protocol.Types.ClientCompletionItemOptionsKind
import LSP.Protocol.Types.CompletionListCapabilities
import LSP.Protocol.Types.InsertTextMode
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CompletionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedCompletionItem <- lookupMaybeFromJSON "completionItem" vs
           parsedCompletionItemKind <- lookupMaybeFromJSON
                                        "completionItemKind"
                                        vs
           parsedInsertTextMode <- lookupMaybeFromJSON "insertTextMode" vs
           parsedContextSupport <- lookupMaybeFromJSON "contextSupport" vs
           parsedCompletionList <- lookupMaybeFromJSON "completionList" vs
           return
            CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , completionClientCapabilitiesCompletionItem = parsedCompletionItem
                                         , completionClientCapabilitiesCompletionItemKind = parsedCompletionItemKind
                                         , completionClientCapabilitiesInsertTextMode = parsedInsertTextMode
                                         , completionClientCapabilitiesContextSupport = parsedContextSupport
                                         , completionClientCapabilitiesCompletionList = parsedCompletionList }
      _ ->
        Left ("Unrecognized CompletionClientCapabilities value: " ++ ppJSON j)

instance ToJSON CompletionClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (completionClientCapabilitiesDynamicRegistration x),  (.?=)
                                                              "completionItem"
                                                              (completionClientCapabilitiesCompletionItem
                                                                x),  (.?=)
                                                                      "completionItemKind"
                                                                      (completionClientCapabilitiesCompletionItemKind
                                                                        x),  (.?=)
                                                                              "insertTextMode"
                                                                              (completionClientCapabilitiesInsertTextMode
                                                                                x),  (.?=)
                                                                                      "contextSupport"
                                                                                      (completionClientCapabilitiesContextSupport
                                                                                        x),  (.?=)
                                                                                              "completionList"
                                                                                              (completionClientCapabilitiesCompletionList
                                                                                                x)]

instance Default CompletionClientCapabilities where
  def =
    CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration = def
                                 , completionClientCapabilitiesCompletionItem = def
                                 , completionClientCapabilitiesCompletionItemKind = def
                                 , completionClientCapabilitiesInsertTextMode = def
                                 , completionClientCapabilitiesContextSupport = def
                                 , completionClientCapabilitiesCompletionList = def }

data CompletionClientCapabilities = CompletionClientCapabilities { completionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionItem :: Maybe ClientCompletionItemOptions
                                                                 , completionClientCapabilitiesCompletionItemKind :: Maybe ClientCompletionItemOptionsKind
                                                                 , completionClientCapabilitiesInsertTextMode :: Maybe InsertTextMode
                                                                 , completionClientCapabilitiesContextSupport :: Maybe Bool
                                                                 , completionClientCapabilitiesCompletionList :: Maybe CompletionListCapabilities }
 deriving (Show,Eq)

