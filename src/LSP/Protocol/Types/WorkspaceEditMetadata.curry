-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceEditMetadata where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceEditMetadata where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIsRefactoring <- lookupMaybeFromJSON "isRefactoring" vs
           return
            WorkspaceEditMetadata { workspaceEditMetadataIsRefactoring = parsedIsRefactoring }
      _ -> Left ("Unrecognized WorkspaceEditMetadata value: " ++ ppJSON j)

instance ToJSON WorkspaceEditMetadata where
  toJSON x =
    object [(.?=) "isRefactoring" (workspaceEditMetadataIsRefactoring x)]

instance Default WorkspaceEditMetadata where
  def = WorkspaceEditMetadata { workspaceEditMetadataIsRefactoring = def }

data WorkspaceEditMetadata = WorkspaceEditMetadata { workspaceEditMetadataIsRefactoring :: Maybe Bool }
 deriving (Show,Eq)

