-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CreateFileOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CreateFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOverwrite <- lookupMaybeFromJSON "overwrite" vs
           parsedIgnoreIfExists <- lookupMaybeFromJSON "ignoreIfExists" vs
           return
            CreateFileOptions { createFileOptionsOverwrite = parsedOverwrite
                              , createFileOptionsIgnoreIfExists = parsedIgnoreIfExists }
      _ -> Left ("Unrecognized CreateFileOptions value: " ++ ppJSON j)

data CreateFileOptions = CreateFileOptions { createFileOptionsOverwrite :: Maybe Bool
                                           , createFileOptionsIgnoreIfExists :: Maybe Bool }
 deriving (Show,Eq)
