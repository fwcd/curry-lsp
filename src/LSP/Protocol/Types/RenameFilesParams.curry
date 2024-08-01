-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameFilesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileRename
import LSP.Utils.JSON

instance FromJSON RenameFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return RenameFilesParams { renameFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized RenameFilesParams value: " ++ ppJSON j)

instance ToJSON RenameFilesParams where
  toJSON x = object [(.=) "files" (renameFilesParamsFiles x)]

data RenameFilesParams = RenameFilesParams { renameFilesParamsFiles :: [FileRename] }
 deriving (Show,Eq)

