-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TextDocumentSyncClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TextDocumentSyncClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedWillSave <- lookupMaybeFromJSON "willSave" vs
           parsedWillSaveWaitUntil <- lookupMaybeFromJSON "willSaveWaitUntil"
                                       vs
           parsedDidSave <- lookupMaybeFromJSON "didSave" vs
           return
            TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                               , textDocumentSyncClientCapabilitiesWillSave = parsedWillSave
                                               , textDocumentSyncClientCapabilitiesWillSaveWaitUntil = parsedWillSaveWaitUntil
                                               , textDocumentSyncClientCapabilitiesDidSave = parsedDidSave }
      _ ->
        Left
         ("Unrecognized TextDocumentSyncClientCapabilities value: "
           ++ ppJSON j)

data TextDocumentSyncClientCapabilities = TextDocumentSyncClientCapabilities { textDocumentSyncClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSave :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesWillSaveWaitUntil :: Maybe Bool
                                                                             , textDocumentSyncClientCapabilitiesDidSave :: Maybe Bool }
 deriving (Show,Eq)
