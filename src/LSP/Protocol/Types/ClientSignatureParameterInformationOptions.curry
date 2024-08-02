-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientSignatureParameterInformationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ClientSignatureParameterInformationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabelOffsetSupport <- lookupMaybeFromJSON
                                        "labelOffsetSupport"
                                        vs
           return
            ClientSignatureParameterInformationOptions { clientSignatureParameterInformationOptionsLabelOffsetSupport = parsedLabelOffsetSupport }
      _ ->
        Left
         ("Unrecognized ClientSignatureParameterInformationOptions value: "
           ++ ppJSON j)

instance ToJSON ClientSignatureParameterInformationOptions where
  toJSON x =
    object
     [(.?=) "labelOffsetSupport"
       (clientSignatureParameterInformationOptionsLabelOffsetSupport x)]

instance Default ClientSignatureParameterInformationOptions where
  def =
    ClientSignatureParameterInformationOptions { clientSignatureParameterInformationOptionsLabelOffsetSupport = def }

data ClientSignatureParameterInformationOptions = ClientSignatureParameterInformationOptions { clientSignatureParameterInformationOptionsLabelOffsetSupport :: Maybe Bool }
 deriving (Show,Eq)

