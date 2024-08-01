-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MarkedStringWithLanguage where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MarkedStringWithLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           parsedValue <- lookupFromJSON "value" vs
           return
            MarkedStringWithLanguage { markedStringWithLanguageLanguage = parsedLanguage
                                     , markedStringWithLanguageValue = parsedValue }
      _ -> Left ("Unrecognized MarkedStringWithLanguage value: " ++ ppJSON j)

data MarkedStringWithLanguage = MarkedStringWithLanguage { markedStringWithLanguageLanguage :: String
                                                         , markedStringWithLanguageValue :: String }
 deriving (Show,Eq)

