-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ReferenceClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left ("Unrecognized ReferenceClientCapabilities value: " ++ ppJSON j)

data ReferenceClientCapabilities = ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

