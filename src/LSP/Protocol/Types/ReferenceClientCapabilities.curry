-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON ReferenceClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (referenceClientCapabilitiesDynamicRegistration x)]

instance Default ReferenceClientCapabilities where
  def =
    ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration = def }

data ReferenceClientCapabilities = ReferenceClientCapabilities { referenceClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

