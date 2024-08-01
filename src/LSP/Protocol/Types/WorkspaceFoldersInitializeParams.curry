-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceFoldersInitializeParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceFolder
import LSP.Utils.JSON

instance FromJSON WorkspaceFoldersInitializeParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkspaceFolders <- lookupMaybeFromJSON "workspaceFolders" vs
           return
            WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders = parsedWorkspaceFolders }
      _ ->
        Left
         ("Unrecognized WorkspaceFoldersInitializeParams value: " ++ ppJSON j)

instance ToJSON WorkspaceFoldersInitializeParams where
  toJSON x =
    object
     [(.?=) "workspaceFolders"
       (workspaceFoldersInitializeParamsWorkspaceFolders x)]

data WorkspaceFoldersInitializeParams = WorkspaceFoldersInitializeParams { workspaceFoldersInitializeParamsWorkspaceFolders :: Maybe (Either [WorkspaceFolder] ()) }
 deriving (Show,Eq)

