-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            WorkspaceSymbolRegistrationOptions { workspaceSymbolRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                               , workspaceSymbolRegistrationOptionsResolveProvider = parsedResolveProvider }
      _ ->
        Left
         ("Unrecognized WorkspaceSymbolRegistrationOptions value: "
           ++ ppJSON j)

data WorkspaceSymbolRegistrationOptions = WorkspaceSymbolRegistrationOptions { workspaceSymbolRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                             , workspaceSymbolRegistrationOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

