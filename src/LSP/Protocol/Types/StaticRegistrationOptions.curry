-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.StaticRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON StaticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupMaybeFromJSON "id" vs
           return
            StaticRegistrationOptions { staticRegistrationOptionsId = parsedId }
      _ -> Left ("Unrecognized StaticRegistrationOptions value: " ++ ppJSON j)

instance ToJSON StaticRegistrationOptions where
  toJSON x = object [(.?=) "id" (staticRegistrationOptionsId x)]

instance Default StaticRegistrationOptions where
  def = StaticRegistrationOptions { staticRegistrationOptionsId = def }

data StaticRegistrationOptions = StaticRegistrationOptions { staticRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

