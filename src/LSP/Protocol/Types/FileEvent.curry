-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileEvent where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.FileChangeType
import LSP.Utils.JSON

instance FromJSON FileEvent where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           parsedType <- lookupFromJSON "type" vs
           return
            FileEvent { fileEventUri = parsedUri, fileEventType = parsedType }
      _ -> Left ("Unrecognized FileEvent value: " ++ ppJSON j)

data FileEvent = FileEvent { fileEventUri :: DocumentUri
                           , fileEventType :: FileChangeType }
 deriving (Show,Eq)

