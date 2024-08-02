-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ServerInfo where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ServerInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            ServerInfo { serverInfoName = parsedName
                       , serverInfoVersion = parsedVersion }
      _ -> Left ("Unrecognized ServerInfo value: " ++ ppJSON j)

instance ToJSON ServerInfo where
  toJSON x =
    object
     [(.=) "name" (serverInfoName x),  (.?=) "version" (serverInfoVersion x)]

instance Default ServerInfo where
  def = ServerInfo { serverInfoName = def, serverInfoVersion = def }

data ServerInfo = ServerInfo { serverInfoName :: String
                             , serverInfoVersion :: Maybe String }
 deriving (Show,Eq)

