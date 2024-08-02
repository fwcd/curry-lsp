-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ImplementationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , implementationClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ ->
        Left
         ("Unrecognized ImplementationClientCapabilities value: " ++ ppJSON j)

instance ToJSON ImplementationClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (implementationClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                  "linkSupport"
                                                                  (implementationClientCapabilitiesLinkSupport
                                                                    x)]

instance Default ImplementationClientCapabilities where
  def =
    ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration = def
                                     , implementationClientCapabilitiesLinkSupport = def }

data ImplementationClientCapabilities = ImplementationClientCapabilities { implementationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , implementationClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

