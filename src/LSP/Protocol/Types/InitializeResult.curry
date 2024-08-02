-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InitializeResult where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ServerCapabilities
import LSP.Protocol.Types.ServerInfo
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON InitializeResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedCapabilities <- lookupFromJSON "capabilities" vs
           parsedServerInfo <- lookupMaybeFromJSON "serverInfo" vs
           return
            InitializeResult { initializeResultCapabilities = parsedCapabilities
                             , initializeResultServerInfo = parsedServerInfo }
      _ -> Left ("Unrecognized InitializeResult value: " ++ ppJSON j)

instance ToJSON InitializeResult where
  toJSON x =
    object
     [(.=) "capabilities" (initializeResultCapabilities x),  (.?=)
                                                              "serverInfo"
                                                              (initializeResultServerInfo
                                                                x)]

instance Default InitializeResult where
  def =
    InitializeResult { initializeResultCapabilities = def
                     , initializeResultServerInfo = def }

data InitializeResult = InitializeResult { initializeResultCapabilities :: ServerCapabilities
                                         , initializeResultServerInfo :: Maybe ServerInfo }
 deriving (Show,Eq)

