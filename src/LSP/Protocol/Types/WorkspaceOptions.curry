-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileOperationOptions
import LSP.Protocol.Types.WorkspaceFoldersServerCapabilities
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           parsedFileOperations <- lookupMaybeFromJSON "fileOperations" vs
           return
            WorkspaceOptions { workspaceOptionsWorkspaceFolders = parsedWorkspaceFolders
                             , workspaceOptionsFileOperations = parsedFileOperations }
      _ -> Left ("Unrecognized WorkspaceOptions value: " ++ ppJSON j)

instance ToJSON WorkspaceOptions where
  toJSON x =
    object
     [(.?=) "workspaceFolders" (workspaceOptionsWorkspaceFolders x),  (.?=)
                                                                       "fileOperations"
                                                                       (workspaceOptionsFileOperations
                                                                         x)]

instance Default WorkspaceOptions where
  def =
    WorkspaceOptions { workspaceOptionsWorkspaceFolders = def
                     , workspaceOptionsFileOperations = def }

data WorkspaceOptions = WorkspaceOptions { workspaceOptionsWorkspaceFolders :: Maybe WorkspaceFoldersServerCapabilities
                                         , workspaceOptionsFileOperations :: Maybe FileOperationOptions }
 deriving (Show,Eq)

