-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeWatchedFilesRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileSystemWatcher
import LSP.Utils.JSON

instance FromJSON DidChangeWatchedFilesRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWatchers <- lookupFromJSON "watchers" vs
           return
            DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers = parsedWatchers }
      _ ->
        Left
         ("Unrecognized DidChangeWatchedFilesRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DidChangeWatchedFilesRegistrationOptions where
  toJSON x =
    object
     [(.=) "watchers" (didChangeWatchedFilesRegistrationOptionsWatchers x)]

data DidChangeWatchedFilesRegistrationOptions = DidChangeWatchedFilesRegistrationOptions { didChangeWatchedFilesRegistrationOptionsWatchers :: [FileSystemWatcher] }
 deriving (Show,Eq)

