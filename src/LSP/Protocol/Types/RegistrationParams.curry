-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RegistrationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Registration
import LSP.Utils.JSON

instance FromJSON RegistrationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRegistrations <- lookupFromJSON "registrations" vs
           return
            RegistrationParams { registrationParamsRegistrations = parsedRegistrations }
      _ -> Left ("Unrecognized RegistrationParams value: " ++ ppJSON j)

data RegistrationParams = RegistrationParams { registrationParamsRegistrations :: [Registration] }
 deriving (Show,Eq)

