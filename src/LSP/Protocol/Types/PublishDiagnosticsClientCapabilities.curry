-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PublishDiagnosticsClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientDiagnosticsTagOptions
import LSP.Utils.JSON

instance FromJSON PublishDiagnosticsClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRelatedInformation <- lookupMaybeFromJSON
                                        "relatedInformation"
                                        vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedCodeDescriptionSupport <- lookupMaybeFromJSON
                                            "codeDescriptionSupport"
                                            vs
           parsedDataSupport <- lookupMaybeFromJSON "dataSupport" vs
           parsedVersionSupport <- lookupMaybeFromJSON "versionSupport" vs
           return
            PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesRelatedInformation = parsedRelatedInformation
                                                 , publishDiagnosticsClientCapabilitiesTagSupport = parsedTagSupport
                                                 , publishDiagnosticsClientCapabilitiesCodeDescriptionSupport = parsedCodeDescriptionSupport
                                                 , publishDiagnosticsClientCapabilitiesDataSupport = parsedDataSupport
                                                 , publishDiagnosticsClientCapabilitiesVersionSupport = parsedVersionSupport }
      _ ->
        Left
         ("Unrecognized PublishDiagnosticsClientCapabilities value: "
           ++ ppJSON j)

data PublishDiagnosticsClientCapabilities = PublishDiagnosticsClientCapabilities { publishDiagnosticsClientCapabilitiesRelatedInformation :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesTagSupport :: Maybe ClientDiagnosticsTagOptions
                                                                                 , publishDiagnosticsClientCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesDataSupport :: Maybe Bool
                                                                                 , publishDiagnosticsClientCapabilitiesVersionSupport :: Maybe Bool }
 deriving (Show,Eq)

