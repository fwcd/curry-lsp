-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientInlayHintResolveOptions
import LSP.Utils.JSON

instance FromJSON InlayHintClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           return
            InlayHintClientCapabilities { inlayHintClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                        , inlayHintClientCapabilitiesResolveSupport = parsedResolveSupport }
      _ ->
        Left ("Unrecognized InlayHintClientCapabilities value: " ++ ppJSON j)

instance ToJSON InlayHintClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (inlayHintClientCapabilitiesDynamicRegistration x),  (.?=)
                                                             "resolveSupport"
                                                             (inlayHintClientCapabilitiesResolveSupport
                                                               x)]

data InlayHintClientCapabilities = InlayHintClientCapabilities { inlayHintClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                               , inlayHintClientCapabilitiesResolveSupport :: Maybe ClientInlayHintResolveOptions }
 deriving (Show,Eq)

