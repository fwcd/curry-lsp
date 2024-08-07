-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SignatureHelpOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedRetriggerCharacters <- lookupMaybeFromJSON
                                         "retriggerCharacters"
                                         vs
           return
            SignatureHelpOptions { signatureHelpOptionsWorkDoneProgress = parsedWorkDoneProgress
                                 , signatureHelpOptionsTriggerCharacters = parsedTriggerCharacters
                                 , signatureHelpOptionsRetriggerCharacters = parsedRetriggerCharacters }
      _ -> Left ("Unrecognized SignatureHelpOptions value: " ++ ppJSON j)

instance ToJSON SignatureHelpOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (signatureHelpOptionsWorkDoneProgress x),  (.?=) "triggerCharacters"
                                                   (signatureHelpOptionsTriggerCharacters
                                                     x),  (.?=)
                                                           "retriggerCharacters"
                                                           (signatureHelpOptionsRetriggerCharacters
                                                             x)]

instance Default SignatureHelpOptions where
  def =
    SignatureHelpOptions { signatureHelpOptionsWorkDoneProgress = def
                         , signatureHelpOptionsTriggerCharacters = def
                         , signatureHelpOptionsRetriggerCharacters = def }

data SignatureHelpOptions = SignatureHelpOptions { signatureHelpOptionsWorkDoneProgress :: Maybe Bool
                                                 , signatureHelpOptionsTriggerCharacters :: Maybe [String]
                                                 , signatureHelpOptionsRetriggerCharacters :: Maybe [String] }
 deriving (Show,Eq)

