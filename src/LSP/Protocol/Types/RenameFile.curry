-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.RenameFileOptions
import LSP.Utils.JSON

instance FromJSON RenameFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            RenameFile { renameFileKind = parsedKind
                       , renameFileOldUri = parsedOldUri
                       , renameFileNewUri = parsedNewUri
                       , renameFileOptions = parsedOptions }
      _ -> Left ("Unrecognized RenameFile value: " ++ ppJSON j)

data RenameFile = RenameFile { renameFileKind :: String
                             , renameFileOldUri :: DocumentUri
                             , renameFileNewUri :: DocumentUri
                             , renameFileOptions :: Maybe RenameFileOptions }
 deriving (Show,Eq)

