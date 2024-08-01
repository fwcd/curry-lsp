-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileSystemWatcher where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.GlobPattern
import LSP.Protocol.Types.WatchKind
import LSP.Utils.JSON

instance FromJSON FileSystemWatcher where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGlobPattern <- lookupFromJSON "globPattern" vs
           parsedKind <- lookupMaybeFromJSON "kind" vs
           return
            FileSystemWatcher { fileSystemWatcherGlobPattern = parsedGlobPattern
                              , fileSystemWatcherKind = parsedKind }
      _ -> Left ("Unrecognized FileSystemWatcher value: " ++ ppJSON j)

data FileSystemWatcher = FileSystemWatcher { fileSystemWatcherGlobPattern :: GlobPattern
                                           , fileSystemWatcherKind :: Maybe WatchKind }
 deriving (Show,Eq)

