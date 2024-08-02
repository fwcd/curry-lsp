-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceSymbolOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            WorkspaceSymbolOptions { workspaceSymbolOptionsWorkDoneProgress = parsedWorkDoneProgress
                                   , workspaceSymbolOptionsResolveProvider = parsedResolveProvider }
      _ -> Left ("Unrecognized WorkspaceSymbolOptions value: " ++ ppJSON j)

instance ToJSON WorkspaceSymbolOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (workspaceSymbolOptionsWorkDoneProgress x),  (.?=) "resolveProvider"
                                                     (workspaceSymbolOptionsResolveProvider
                                                       x)]

instance Default WorkspaceSymbolOptions where
  def =
    WorkspaceSymbolOptions { workspaceSymbolOptionsWorkDoneProgress = def
                           , workspaceSymbolOptionsResolveProvider = def }

data WorkspaceSymbolOptions = WorkspaceSymbolOptions { workspaceSymbolOptionsWorkDoneProgress :: Maybe Bool
                                                     , workspaceSymbolOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

