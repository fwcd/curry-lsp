-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeConfigurationClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DidChangeConfigurationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DidChangeConfigurationClientCapabilities value: "
           ++ ppJSON j)

data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities { didChangeConfigurationClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

