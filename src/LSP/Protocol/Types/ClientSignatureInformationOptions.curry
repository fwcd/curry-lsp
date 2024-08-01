-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSignatureInformationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSignatureParameterInformationOptions
import LSP.Protocol.Types.MarkupKind
import LSP.Utils.JSON

instance FromJSON ClientSignatureInformationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentationFormat <- lookupMaybeFromJSON
                                         "documentationFormat"
                                         vs
           parsedParameterInformation <- lookupMaybeFromJSON
                                          "parameterInformation"
                                          vs
           parsedActiveParameterSupport <- lookupMaybeFromJSON
                                            "activeParameterSupport"
                                            vs
           parsedNoActiveParameterSupport <- lookupMaybeFromJSON
                                              "noActiveParameterSupport"
                                              vs
           return
            ClientSignatureInformationOptions { clientSignatureInformationOptionsDocumentationFormat = parsedDocumentationFormat
                                              , clientSignatureInformationOptionsParameterInformation = parsedParameterInformation
                                              , clientSignatureInformationOptionsActiveParameterSupport = parsedActiveParameterSupport
                                              , clientSignatureInformationOptionsNoActiveParameterSupport = parsedNoActiveParameterSupport }
      _ ->
        Left
         ("Unrecognized ClientSignatureInformationOptions value: "
           ++ ppJSON j)

instance ToJSON ClientSignatureInformationOptions where
  toJSON x =
    object
     [(.?=) "documentationFormat"
       (clientSignatureInformationOptionsDocumentationFormat x),  (.?=)
                                                                   "parameterInformation"
                                                                   (clientSignatureInformationOptionsParameterInformation
                                                                     x),  (.?=)
                                                                           "activeParameterSupport"
                                                                           (clientSignatureInformationOptionsActiveParameterSupport
                                                                             x),  (.?=)
                                                                                   "noActiveParameterSupport"
                                                                                   (clientSignatureInformationOptionsNoActiveParameterSupport
                                                                                     x)]

data ClientSignatureInformationOptions = ClientSignatureInformationOptions { clientSignatureInformationOptionsDocumentationFormat :: Maybe [MarkupKind]
                                                                           , clientSignatureInformationOptionsParameterInformation :: Maybe ClientSignatureParameterInformationOptions
                                                                           , clientSignatureInformationOptionsActiveParameterSupport :: Maybe Bool
                                                                           , clientSignatureInformationOptionsNoActiveParameterSupport :: Maybe Bool }
 deriving (Show,Eq)

