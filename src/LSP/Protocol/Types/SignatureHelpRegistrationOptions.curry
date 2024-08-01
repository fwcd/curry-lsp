-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SignatureHelpRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SignatureHelpRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SignatureHelpRegistrationOptions value: " ++ ppJSON j)

data SignatureHelpRegistrationOptions = SignatureHelpRegistrationOptions {  }
 deriving (Show,Eq)

