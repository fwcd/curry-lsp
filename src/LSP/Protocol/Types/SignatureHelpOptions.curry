-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SignatureHelpOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedRetriggerCharacters <- lookupMaybeFromJSON
                                         "retriggerCharacters"
                                         vs
           return
            SignatureHelpOptions { signatureHelpOptionsTriggerCharacters = parsedTriggerCharacters
                                 , signatureHelpOptionsRetriggerCharacters = parsedRetriggerCharacters }
      _ -> Left ("Unrecognized SignatureHelpOptions value: " ++ ppJSON j)

data SignatureHelpOptions = SignatureHelpOptions { signatureHelpOptionsTriggerCharacters :: Maybe [String]
                                                 , signatureHelpOptionsRetriggerCharacters :: Maybe [String] }
 deriving (Show,Eq)

