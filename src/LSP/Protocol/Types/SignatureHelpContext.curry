-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpContext where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SignatureHelp
import LSP.Protocol.Types.SignatureHelpTriggerKind
import LSP.Utils.JSON

instance FromJSON SignatureHelpContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTriggerKind <- lookupFromJSON "triggerKind" vs
           parsedTriggerCharacter <- lookupMaybeFromJSON "triggerCharacter" vs
           parsedIsRetrigger <- lookupFromJSON "isRetrigger" vs
           parsedActiveSignatureHelp <- lookupMaybeFromJSON
                                         "activeSignatureHelp"
                                         vs
           return
            SignatureHelpContext { signatureHelpContextTriggerKind = parsedTriggerKind
                                 , signatureHelpContextTriggerCharacter = parsedTriggerCharacter
                                 , signatureHelpContextIsRetrigger = parsedIsRetrigger
                                 , signatureHelpContextActiveSignatureHelp = parsedActiveSignatureHelp }
      _ -> Left ("Unrecognized SignatureHelpContext value: " ++ ppJSON j)

instance ToJSON SignatureHelpContext where
  toJSON x =
    object
     [(.=) "triggerKind" (signatureHelpContextTriggerKind x),  (.?=)
                                                                "triggerCharacter"
                                                                (signatureHelpContextTriggerCharacter
                                                                  x),  (.=)
                                                                        "isRetrigger"
                                                                        (signatureHelpContextIsRetrigger
                                                                          x),  (.?=)
                                                                                "activeSignatureHelp"
                                                                                (signatureHelpContextActiveSignatureHelp
                                                                                  x)]

data SignatureHelpContext = SignatureHelpContext { signatureHelpContextTriggerKind :: SignatureHelpTriggerKind
                                                 , signatureHelpContextTriggerCharacter :: Maybe String
                                                 , signatureHelpContextIsRetrigger :: Bool
                                                 , signatureHelpContextActiveSignatureHelp :: Maybe SignatureHelp }
 deriving (Show,Eq)

