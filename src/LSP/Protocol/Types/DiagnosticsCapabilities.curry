-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticsCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientDiagnosticsTagOptions
import LSP.Utils.JSON

instance FromJSON DiagnosticsCapabilities where
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
           return
            DiagnosticsCapabilities { diagnosticsCapabilitiesRelatedInformation = parsedRelatedInformation
                                    , diagnosticsCapabilitiesTagSupport = parsedTagSupport
                                    , diagnosticsCapabilitiesCodeDescriptionSupport = parsedCodeDescriptionSupport
                                    , diagnosticsCapabilitiesDataSupport = parsedDataSupport }
      _ -> Left ("Unrecognized DiagnosticsCapabilities value: " ++ ppJSON j)

instance ToJSON DiagnosticsCapabilities where
  toJSON x =
    object
     [(.?=) "relatedInformation"
       (diagnosticsCapabilitiesRelatedInformation x),  (.?=) "tagSupport"
                                                        (diagnosticsCapabilitiesTagSupport
                                                          x),  (.?=)
                                                                "codeDescriptionSupport"
                                                                (diagnosticsCapabilitiesCodeDescriptionSupport
                                                                  x),  (.?=)
                                                                        "dataSupport"
                                                                        (diagnosticsCapabilitiesDataSupport
                                                                          x)]

data DiagnosticsCapabilities = DiagnosticsCapabilities { diagnosticsCapabilitiesRelatedInformation :: Maybe Bool
                                                       , diagnosticsCapabilitiesTagSupport :: Maybe ClientDiagnosticsTagOptions
                                                       , diagnosticsCapabilitiesCodeDescriptionSupport :: Maybe Bool
                                                       , diagnosticsCapabilitiesDataSupport :: Maybe Bool }
 deriving (Show,Eq)

