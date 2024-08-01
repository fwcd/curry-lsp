-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized DocumentHighlightClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON DocumentHighlightClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (documentHighlightClientCapabilitiesDynamicRegistration x)]

data DocumentHighlightClientCapabilities = DocumentHighlightClientCapabilities { documentHighlightClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

