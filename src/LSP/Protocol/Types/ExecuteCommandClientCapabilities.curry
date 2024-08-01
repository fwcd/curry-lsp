-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ExecuteCommandClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized ExecuteCommandClientCapabilities value: " ++ ppJSON j)

instance ToJSON ExecuteCommandClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (executeCommandClientCapabilitiesDynamicRegistration x)]

data ExecuteCommandClientCapabilities = ExecuteCommandClientCapabilities { executeCommandClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

