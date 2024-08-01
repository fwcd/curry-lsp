-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MonikerClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ -> Left ("Unrecognized MonikerClientCapabilities value: " ++ ppJSON j)

data MonikerClientCapabilities = MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

