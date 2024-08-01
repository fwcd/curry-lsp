-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON SignatureHelpRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedTriggerCharacters <- lookupMaybeFromJSON "triggerCharacters"
                                       vs
           parsedRetriggerCharacters <- lookupMaybeFromJSON
                                         "retriggerCharacters"
                                         vs
           return
            SignatureHelpRegistrationOptions { signatureHelpRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                             , signatureHelpRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                             , signatureHelpRegistrationOptionsTriggerCharacters = parsedTriggerCharacters
                                             , signatureHelpRegistrationOptionsRetriggerCharacters = parsedRetriggerCharacters }
      _ ->
        Left
         ("Unrecognized SignatureHelpRegistrationOptions value: " ++ ppJSON j)

data SignatureHelpRegistrationOptions = SignatureHelpRegistrationOptions { signatureHelpRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                         , signatureHelpRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                         , signatureHelpRegistrationOptionsTriggerCharacters :: Maybe [String]
                                                                         , signatureHelpRegistrationOptionsRetriggerCharacters :: Maybe [String] }
 deriving (Show,Eq)

