-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DidChangeConfigurationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DidChangeConfigurationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSection <- lookupMaybeFromJSON "section" vs
           return
            DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection = parsedSection }
      _ ->
        Left
         ("Unrecognized DidChangeConfigurationRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DidChangeConfigurationRegistrationOptions where
  toJSON x =
    object
     [(.?=) "section" (didChangeConfigurationRegistrationOptionsSection x)]

data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions { didChangeConfigurationRegistrationOptionsSection :: Maybe (Either String [String]) }
 deriving (Show,Eq)

