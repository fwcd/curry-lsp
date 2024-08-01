-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameFileOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON RenameFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            RenameFileOptions { renameFileOptionsOverwrite = parsedOverwrite
                              , renameFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left ("Unrecognized RenameFileOptions value: " ++ ppJSON j)

data RenameFileOptions = RenameFileOptions { renameFileOptionsOverwrite :: Maybe Bool
                                           , renameFileOptionsIgnoreIfExists :: Maybe Bool }
 deriving (Show,Eq)

