-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureInformation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkupContent
import LSP.Protocol.Types.ParameterInformation
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

data SignatureInformation = SignatureInformation { signatureInformationLabel :: String
                                                 , signatureInformationDocumentation :: Maybe (Either String MarkupContent)
                                                 , signatureInformationParameters :: Maybe [ParameterInformation]
                                                 , signatureInformationActiveParameter :: Maybe (Either Int ()) }
 deriving (Show,Eq)

