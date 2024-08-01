-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            DefinitionClientCapabilities { definitionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                         , definitionClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ ->
        Left ("Unrecognized DefinitionClientCapabilities value: " ++ ppJSON j)

instance ToJSON DefinitionClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (definitionClientCapabilitiesDynamicRegistration x),  (.?=)
                                                              "linkSupport"
                                                              (definitionClientCapabilitiesLinkSupport
                                                                x)]

data DefinitionClientCapabilities = DefinitionClientCapabilities { definitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                 , definitionClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

