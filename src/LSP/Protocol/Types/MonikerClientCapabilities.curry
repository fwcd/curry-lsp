-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON MonikerClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (monikerClientCapabilitiesDynamicRegistration x)]

instance Default MonikerClientCapabilities where
  def =
    MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration = def }

data MonikerClientCapabilities = MonikerClientCapabilities { monikerClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

