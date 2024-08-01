-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeleteFileOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeleteFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRecursive <- lookupMaybeFromJSON "recursive" vs
           parsedIgnoreIfNotExists <- lookupMaybeFromJSON "ignoreIfNotExists"
                                       vs
           return
            DeleteFileOptions { deleteFileOptionsRecursive = parsedRecursive
                              , deleteFileOptionsIgnoreIfNotExists = parsedIgnoreIfNotExists }
      _ -> Left ("Unrecognized DeleteFileOptions value: " ++ ppJSON j)

data DeleteFileOptions = DeleteFileOptions { deleteFileOptionsRecursive :: Maybe Bool
                                           , deleteFileOptionsIgnoreIfNotExists :: Maybe Bool }
 deriving (Show,Eq)

