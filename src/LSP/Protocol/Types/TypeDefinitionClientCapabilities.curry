-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeDefinitionClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            TypeDefinitionClientCapabilities { typeDefinitionClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , typeDefinitionClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ ->
        Left
         ("Unrecognized TypeDefinitionClientCapabilities value: " ++ ppJSON j)

instance ToJSON TypeDefinitionClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (typeDefinitionClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                  "linkSupport"
                                                                  (typeDefinitionClientCapabilitiesLinkSupport
                                                                    x)]

data TypeDefinitionClientCapabilities = TypeDefinitionClientCapabilities { typeDefinitionClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , typeDefinitionClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

