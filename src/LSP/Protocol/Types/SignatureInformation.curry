-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupContent
import LSP.Protocol.Types.ParameterInformation
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SignatureInformation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedDocumentation <- lookupMaybeFromJSON "documentation" vs
           parsedParameters <- lookupMaybeFromJSON "parameters" vs
           parsedActiveParameter <- lookupMaybeFromJSON "activeParameter" vs
           return
            SignatureInformation { signatureInformationLabel = parsedLabel
                                 , signatureInformationDocumentation = parsedDocumentation
                                 , signatureInformationParameters = parsedParameters
                                 , signatureInformationActiveParameter = parsedActiveParameter }
      _ -> Left ("Unrecognized SignatureInformation value: " ++ ppJSON j)

instance ToJSON SignatureInformation where
  toJSON x =
    object
     [(.=) "label" (signatureInformationLabel x),  (.?=) "documentation"
                                                    (signatureInformationDocumentation
                                                      x),  (.?=) "parameters"
                                                            (signatureInformationParameters
                                                              x),  (.?=)
                                                                    "activeParameter"
                                                                    (signatureInformationActiveParameter
                                                                      x)]

instance Default SignatureInformation where
  def =
    SignatureInformation { signatureInformationLabel = def
                         , signatureInformationDocumentation = def
                         , signatureInformationParameters = def
                         , signatureInformationActiveParameter = def }

data SignatureInformation = SignatureInformation { signatureInformationLabel :: String
                                                 , signatureInformationDocumentation :: Maybe (Either String MarkupContent)
                                                 , signatureInformationParameters :: Maybe [ParameterInformation]
                                                 , signatureInformationActiveParameter :: Maybe (Either Int ()) }
 deriving (Show,Eq)

