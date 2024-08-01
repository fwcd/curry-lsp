-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FileOperationClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedDidCreate <- lookupMaybeFromJSON "didCreate" vs
           parsedWillCreate <- lookupMaybeFromJSON "willCreate" vs
           parsedDidRename <- lookupMaybeFromJSON "didRename" vs
           parsedWillRename <- lookupMaybeFromJSON "willRename" vs
           parsedDidDelete <- lookupMaybeFromJSON "didDelete" vs
           parsedWillDelete <- lookupMaybeFromJSON "willDelete" vs
           return
            FileOperationClientCapabilities { fileOperationClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                            , fileOperationClientCapabilitiesDidCreate = parsedDidCreate
                                            , fileOperationClientCapabilitiesWillCreate = parsedWillCreate
                                            , fileOperationClientCapabilitiesDidRename = parsedDidRename
                                            , fileOperationClientCapabilitiesWillRename = parsedWillRename
                                            , fileOperationClientCapabilitiesDidDelete = parsedDidDelete
                                            , fileOperationClientCapabilitiesWillDelete = parsedWillDelete }
      _ ->
        Left
         ("Unrecognized FileOperationClientCapabilities value: " ++ ppJSON j)

instance ToJSON FileOperationClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (fileOperationClientCapabilitiesDynamicRegistration x),  (.?=)
                                                                 "didCreate"
                                                                 (fileOperationClientCapabilitiesDidCreate
                                                                   x),  (.?=)
                                                                         "willCreate"
                                                                         (fileOperationClientCapabilitiesWillCreate
                                                                           x),  (.?=)
                                                                                 "didRename"
                                                                                 (fileOperationClientCapabilitiesDidRename
                                                                                   x),  (.?=)
                                                                                         "willRename"
                                                                                         (fileOperationClientCapabilitiesWillRename
                                                                                           x),  (.?=)
                                                                                                 "didDelete"
                                                                                                 (fileOperationClientCapabilitiesDidDelete
                                                                                                   x),  (.?=)
                                                                                                         "willDelete"
                                                                                                         (fileOperationClientCapabilitiesWillDelete
                                                                                                           x)]

data FileOperationClientCapabilities = FileOperationClientCapabilities { fileOperationClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillCreate :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillRename :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesDidDelete :: Maybe Bool
                                                                       , fileOperationClientCapabilitiesWillDelete :: Maybe Bool }
 deriving (Show,Eq)

