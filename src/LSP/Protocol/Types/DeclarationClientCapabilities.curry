-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeclarationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedLinkSupport <- lookupMaybeFromJSON "linkSupport" vs
           return
            DeclarationClientCapabilities { declarationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                          , declarationClientCapabilitiesLinkSupport = parsedLinkSupport }
      _ ->
        Left
         ("Unrecognized DeclarationClientCapabilities value: " ++ ppJSON j)

instance ToJSON DeclarationClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (declarationClientCapabilitiesDynamicRegistration x),  (.?=)
                                                               "linkSupport"
                                                               (declarationClientCapabilitiesLinkSupport
                                                                 x)]

data DeclarationClientCapabilities = DeclarationClientCapabilities { declarationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                   , declarationClientCapabilitiesLinkSupport :: Maybe Bool }
 deriving (Show,Eq)

