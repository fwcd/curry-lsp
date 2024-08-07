-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceFoldersChangeEvent where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceFolder
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceFoldersChangeEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedAdded <- lookupFromJSON "added" vs
           parsedRemoved <- lookupFromJSON "removed" vs
           return
            WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded = parsedAdded
                                        , workspaceFoldersChangeEventRemoved = parsedRemoved }
      _ ->
        Left ("Unrecognized WorkspaceFoldersChangeEvent value: " ++ ppJSON j)

instance ToJSON WorkspaceFoldersChangeEvent where
  toJSON x =
    object
     [(.=) "added" (workspaceFoldersChangeEventAdded x),  (.=) "removed"
                                                           (workspaceFoldersChangeEventRemoved
                                                             x)]

instance Default WorkspaceFoldersChangeEvent where
  def =
    WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded = def
                                , workspaceFoldersChangeEventRemoved = def }

data WorkspaceFoldersChangeEvent = WorkspaceFoldersChangeEvent { workspaceFoldersChangeEventAdded :: [WorkspaceFolder]
                                                               , workspaceFoldersChangeEventRemoved :: [WorkspaceFolder] }
 deriving (Show,Eq)

