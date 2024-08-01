-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceFolder where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.JSON

instance FromJSON WorkspaceFolder where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedName <- lookupFromJSON "name" vs
           return
            WorkspaceFolder { workspaceFolderUri = parsedUri
                            , workspaceFolderName = parsedName }
      _ -> Left ("Unrecognized WorkspaceFolder value: " ++ ppJSON j)

data WorkspaceFolder = WorkspaceFolder { workspaceFolderUri :: Uri
                                       , workspaceFolderName :: String }
 deriving (Show,Eq)

