-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentColorClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentColorClientCapabilities value: " ++ ppJSON j)

instance ToJSON DocumentColorClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentColorClientCapabilitiesDynamicRegistration x)]

data DocumentColorClientCapabilities = DocumentColorClientCapabilities { documentColorClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

