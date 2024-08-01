-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentLinkClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentLinkClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedTooltipSupport <- lookupMaybeFromJSON "tooltipSupport" vs
           return
            DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                           , documentLinkClientCapabilitiesTooltipSupport = parsedTooltipSupport }
      _ ->
        Left
         ("Unrecognized DocumentLinkClientCapabilities value: " ++ ppJSON j)

instance ToJSON DocumentLinkClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentLinkClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                "tooltipSupport"
                                                                (documentLinkClientCapabilitiesTooltipSupport
                                                                  x)]

data DocumentLinkClientCapabilities = DocumentLinkClientCapabilities { documentLinkClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                     , documentLinkClientCapabilitiesTooltipSupport :: Maybe Bool }
 deriving (Show,Eq)

