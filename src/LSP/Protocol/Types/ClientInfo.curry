-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientInfo where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON ClientInfo where
  toJSON x =
    object
     [(.=) "name" (clientInfoName x),  (.?=) "version" (clientInfoVersion x)]

instance Default ClientInfo where
  def = ClientInfo { clientInfoName = def, clientInfoVersion = def }

data ClientInfo = ClientInfo { clientInfoName :: String
                             , clientInfoVersion :: Maybe String }
 deriving (Show,Eq)

