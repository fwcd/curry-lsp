-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelp where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SignatureInformation
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SignatureHelp where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSignatures <- lookupFromJSON "signatures" vs
           parsedActiveSignature <- lookupMaybeFromJSON "activeSignature" vs
           parsedActiveParameter <- lookupMaybeFromJSON "activeParameter" vs
           return
            SignatureHelp { signatureHelpSignatures = parsedSignatures
                          , signatureHelpActiveSignature = parsedActiveSignature
                          , signatureHelpActiveParameter = parsedActiveParameter }
      _ -> Left ("Unrecognized SignatureHelp value: " ++ ppJSON j)

instance ToJSON SignatureHelp where
  toJSON x =
    object
     [(.=) "signatures" (signatureHelpSignatures x),  (.?=) "activeSignature"
                                                       (signatureHelpActiveSignature
                                                         x),  (.?=)
                                                               "activeParameter"
                                                               (signatureHelpActiveParameter
                                                                 x)]

instance Default SignatureHelp where
  def =
    SignatureHelp { signatureHelpSignatures = def
                  , signatureHelpActiveSignature = def
                  , signatureHelpActiveParameter = def }

data SignatureHelp = SignatureHelp { signatureHelpSignatures :: [SignatureInformation]
                                   , signatureHelpActiveSignature :: Maybe Int
                                   , signatureHelpActiveParameter :: Maybe (Either Int ()) }
 deriving (Show,Eq)

