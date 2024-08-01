-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized WorkspaceSymbolOptions value: " ++ ppJSON j)

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { workspaceSymbolOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

