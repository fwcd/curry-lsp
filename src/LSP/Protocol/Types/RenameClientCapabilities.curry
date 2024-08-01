-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.PrepareSupportDefaultBehavior
import LSP.Utils.JSON

instance FromJSON RenameClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedPrepareSupport <- lookupMaybeFromJSON "prepareSupport" vs
           parsedPrepareSupportDefaultBehavior <- lookupMaybeFromJSON
                                                   "prepareSupportDefaultBehavior"
                                                   vs
           parsedHonorsChangeAnnotations <- lookupMaybeFromJSON
                                             "honorsChangeAnnotations"
                                             vs
           return
            RenameClientCapabilities { renameClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                     , renameClientCapabilitiesPrepareSupport = parsedPrepareSupport
                                     , renameClientCapabilitiesPrepareSupportDefaultBehavior = parsedPrepareSupportDefaultBehavior
                                     , renameClientCapabilitiesHonorsChangeAnnotations = parsedHonorsChangeAnnotations }
      _ -> Left ("Unrecognized RenameClientCapabilities value: " ++ ppJSON j)

instance ToJSON RenameClientCapabilities where
  toJSON x =
    object
     [(.?=) "dynamicRegistration"
       (renameClientCapabilitiesDynamicRegistration x),  (.?=)
                                                          "prepareSupport"
                                                          (renameClientCapabilitiesPrepareSupport
                                                            x),  (.?=)
                                                                  "prepareSupportDefaultBehavior"
                                                                  (renameClientCapabilitiesPrepareSupportDefaultBehavior
                                                                    x),  (.?=)
                                                                          "honorsChangeAnnotations"
                                                                          (renameClientCapabilitiesHonorsChangeAnnotations
                                                                            x)]

data RenameClientCapabilities = RenameClientCapabilities { renameClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupport :: Maybe Bool
                                                         , renameClientCapabilitiesPrepareSupportDefaultBehavior :: Maybe PrepareSupportDefaultBehavior
                                                         , renameClientCapabilitiesHonorsChangeAnnotations :: Maybe Bool }
 deriving (Show,Eq)

