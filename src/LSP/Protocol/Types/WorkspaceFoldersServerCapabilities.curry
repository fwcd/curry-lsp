-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceFoldersServerCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkspaceFoldersServerCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSupported <- lookupMaybeFromJSON "supported" vs
           parsedChangeNotifications <- lookupMaybeFromJSON
                                         "changeNotifications"
                                         vs
           return
            WorkspaceFoldersServerCapabilities { workspaceFoldersServerCapabilitiesSupported = parsedSupported
                                               , workspaceFoldersServerCapabilitiesChangeNotifications = parsedChangeNotifications }
      _ ->
        Left
         ("Unrecognized WorkspaceFoldersServerCapabilities value: "
           ++ ppJSON j)

data WorkspaceFoldersServerCapabilities = WorkspaceFoldersServerCapabilities { workspaceFoldersServerCapabilitiesSupported :: Maybe Bool
                                                                             , workspaceFoldersServerCapabilitiesChangeNotifications :: Maybe (Either String Bool) }
 deriving (Show,Eq)

