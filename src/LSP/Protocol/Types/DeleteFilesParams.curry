-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeleteFilesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileDelete
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DeleteFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return DeleteFilesParams { deleteFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized DeleteFilesParams value: " ++ ppJSON j)

instance ToJSON DeleteFilesParams where
  toJSON x = object [(.=) "files" (deleteFilesParamsFiles x)]

instance Default DeleteFilesParams where
  def = DeleteFilesParams { deleteFilesParamsFiles = def }

data DeleteFilesParams = DeleteFilesParams { deleteFilesParamsFiles :: [FileDelete] }
 deriving (Show,Eq)

