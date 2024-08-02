-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentOnTypeFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentOnTypeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedFirstTriggerCharacter <- lookupFromJSON
                                           "firstTriggerCharacter"
                                           vs
           parsedMoreTriggerCharacter <- lookupMaybeFromJSON
                                          "moreTriggerCharacter"
                                          vs
           return
            DocumentOnTypeFormattingRegistrationOptions { documentOnTypeFormattingRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                        , documentOnTypeFormattingRegistrationOptionsFirstTriggerCharacter = parsedFirstTriggerCharacter
                                                        , documentOnTypeFormattingRegistrationOptionsMoreTriggerCharacter = parsedMoreTriggerCharacter }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DocumentOnTypeFormattingRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentOnTypeFormattingRegistrationOptionsDocumentSelector x),  (.=)
                                                                          "firstTriggerCharacter"
                                                                          (documentOnTypeFormattingRegistrationOptionsFirstTriggerCharacter
                                                                            x),  (.?=)
                                                                                  "moreTriggerCharacter"
                                                                                  (documentOnTypeFormattingRegistrationOptionsMoreTriggerCharacter
                                                                                    x)]

instance Default DocumentOnTypeFormattingRegistrationOptions where
  def =
    DocumentOnTypeFormattingRegistrationOptions { documentOnTypeFormattingRegistrationOptionsDocumentSelector = def
                                                , documentOnTypeFormattingRegistrationOptionsFirstTriggerCharacter = def
                                                , documentOnTypeFormattingRegistrationOptionsMoreTriggerCharacter = def }

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions { documentOnTypeFormattingRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                               , documentOnTypeFormattingRegistrationOptionsFirstTriggerCharacter :: String
                                                                                               , documentOnTypeFormattingRegistrationOptionsMoreTriggerCharacter :: Maybe [String] }
 deriving (Show,Eq)

