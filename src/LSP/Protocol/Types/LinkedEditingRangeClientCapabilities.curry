-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized LinkedEditingRangeClientCapabilities value: "
           ++ ppJSON j)

instance ToJSON LinkedEditingRangeClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (linkedEditingRangeClientCapabilitiesDynamicRegistration x)]

data LinkedEditingRangeClientCapabilities = LinkedEditingRangeClientCapabilities { linkedEditingRangeClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

