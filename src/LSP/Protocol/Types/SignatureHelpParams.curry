-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SignatureHelpContext
import LSP.Utils.JSON

instance FromJSON SignatureHelpParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupMaybeFromJSON "context" vs
           return
            SignatureHelpParams { signatureHelpParamsContext = parsedContext }
      _ -> Left ("Unrecognized SignatureHelpParams value: " ++ ppJSON j)

data SignatureHelpParams = SignatureHelpParams { signatureHelpParamsContext :: Maybe SignatureHelpContext }
 deriving (Show,Eq)

