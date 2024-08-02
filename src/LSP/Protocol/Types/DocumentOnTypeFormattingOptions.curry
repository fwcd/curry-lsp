-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentOnTypeFormattingOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DocumentOnTypeFormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFirstTriggerCharacter <- lookupFromJSON
                                           "firstTriggerCharacter"
                                           vs
           parsedMoreTriggerCharacter <- lookupMaybeFromJSON
                                          "moreTriggerCharacter"
                                          vs
           return
            DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter = parsedFirstTriggerCharacter
                                            , documentOnTypeFormattingOptionsMoreTriggerCharacter = parsedMoreTriggerCharacter }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingOptions value: " ++ ppJSON j)

instance ToJSON DocumentOnTypeFormattingOptions where
  toJSON x =
    object
     [(.=) "firstTriggerCharacter"
       (documentOnTypeFormattingOptionsFirstTriggerCharacter x),  (.?=)
                                                                   "moreTriggerCharacter"
                                                                   (documentOnTypeFormattingOptionsMoreTriggerCharacter
                                                                     x)]

instance Default DocumentOnTypeFormattingOptions where
  def =
    DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter = def
                                    , documentOnTypeFormattingOptionsMoreTriggerCharacter = def }

data DocumentOnTypeFormattingOptions = DocumentOnTypeFormattingOptions { documentOnTypeFormattingOptionsFirstTriggerCharacter :: String
                                                                       , documentOnTypeFormattingOptionsMoreTriggerCharacter :: Maybe [String] }
 deriving (Show,Eq)

