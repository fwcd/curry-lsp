-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeHierarchyClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeHierarchyClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           return
            TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration = parsedDynamicRegistration }
      _ ->
        Left
         ("Unrecognized TypeHierarchyClientCapabilities value: " ++ ppJSON j)

data TypeHierarchyClientCapabilities = TypeHierarchyClientCapabilities { typeHierarchyClientCapabilitiesDynamicRegistration :: Maybe Bool }
 deriving (Show,Eq)

