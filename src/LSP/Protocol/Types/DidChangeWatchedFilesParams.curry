-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeWatchedFilesParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileEvent
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DidChangeWatchedFilesParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedChanges <- lookupFromJSON "changes" vs
           return
            DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges = parsedChanges }
      _ ->
        Left ("Unrecognized DidChangeWatchedFilesParams value: " ++ ppJSON j)

instance ToJSON DidChangeWatchedFilesParams where
  toJSON x = object [(.=) "changes" (didChangeWatchedFilesParamsChanges x)]

instance Default DidChangeWatchedFilesParams where
  def =
    DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges = def }

data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams { didChangeWatchedFilesParamsChanges :: [FileEvent] }
 deriving (Show,Eq)

