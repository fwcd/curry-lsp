-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CreateFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.CreateFileOptions
import LSP.Utils.JSON

instance FromJSON CreateFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            CreateFile { createFileKind = parsedKind
                       , createFileUri = parsedUri
                       , createFileOptions = parsedOptions }
      _ -> Left ("Unrecognized CreateFile value: " ++ ppJSON j)

data CreateFile = CreateFile { createFileKind :: String
                             , createFileUri :: DocumentUri
                             , createFileOptions :: Maybe CreateFileOptions }
 deriving (Show,Eq)

