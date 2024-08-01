-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientInfo where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ClientInfo where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedName <- lookupFromJSON "name" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           return
            ClientInfo { clientInfoName = parsedName
                       , clientInfoVersion = parsedVersion }
      _ -> Left ("Unrecognized ClientInfo value: " ++ ppJSON j)

data ClientInfo = ClientInfo { clientInfoName :: String
                             , clientInfoVersion :: Maybe String }
 deriving (Show,Eq)

