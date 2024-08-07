-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CallHierarchyClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CallHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized CallHierarchyClientCapabilities value: " ++ ppJSON j)

instance ToJSON CallHierarchyClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (callHierarchyClientCapabilitiesDynamicRegistration x)]

instance Default CallHierarchyClientCapabilities where
  def =
    CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration = def }

data CallHierarchyClientCapabilities = CallHierarchyClientCapabilities { callHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

