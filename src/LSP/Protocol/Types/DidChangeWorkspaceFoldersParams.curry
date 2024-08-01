-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeWorkspaceFoldersParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.WorkspaceFoldersChangeEvent
import LSP.Utils.JSON

instance FromJSON DidChangeWorkspaceFoldersParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedEvent <- lookupFromJSON "event" vs
           return
            DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent = parsedEvent }
      _ ->
        Left
         ("Unrecognized DidChangeWorkspaceFoldersParams value: " ++ ppJSON j)

instance ToJSON DidChangeWorkspaceFoldersParams where
  toJSON x = object [(.=) "event" (didChangeWorkspaceFoldersParamsEvent x)]

data DidChangeWorkspaceFoldersParams = DidChangeWorkspaceFoldersParams { didChangeWorkspaceFoldersParamsEvent :: WorkspaceFoldersChangeEvent }
 deriving (Show,Eq)

