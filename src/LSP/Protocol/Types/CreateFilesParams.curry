-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CreateFilesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileCreate
import LSP.Utils.JSON

instance FromJSON CreateFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFiles <- lookupFromJSON "files" vs
           return CreateFilesParams { createFilesParamsFiles = parsedFiles }
      _ -> Left ("Unrecognized CreateFilesParams value: " ++ ppJSON j)

data CreateFilesParams = CreateFilesParams { createFilesParamsFiles :: [FileCreate] }
 deriving (Show,Eq)

