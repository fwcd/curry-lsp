-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupKind
import LSP.Utils.JSON

instance FromJSON HoverClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedContentFormat <- lookupMaybeFromJSON "contentFormat" vs
           return
            HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                    , hoverClientCapabilitiesContentFormat = parsedContentFormat }
      _ -> Left ("Unrecognized HoverClientCapabilities value: " ++ ppJSON j)

instance ToJSON HoverClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (hoverClientCapabilitiesDynamicRegistration x),  (.?=) "contentFormat"
                                                         (hoverClientCapabilitiesContentFormat
                                                           x)]

data HoverClientCapabilities = HoverClientCapabilities { hoverClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                       , hoverClientCapabilitiesContentFormat :: Maybe [MarkupKind] }
 deriving (Show,Eq)

