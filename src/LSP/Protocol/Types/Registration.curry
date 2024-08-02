-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Registration where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON Registration where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           parsedMethod <- lookupFromJSON "method" vs
           parsedRegisterOptions <- lookupMaybeFromJSON "registerOptions" vs
           return
            Registration { registrationId = parsedId
                         , registrationMethod = parsedMethod
                         , registrationRegisterOptions = parsedRegisterOptions }
      _ -> Left ("Unrecognized Registration value: " ++ ppJSON j)

instance ToJSON Registration where
  toJSON x =
    object
     [(.=) "id" (registrationId x),  (.=) "method"
                                      (registrationMethod x),  (.?=)
                                                                "registerOptions"
                                                                (registrationRegisterOptions
                                                                  x)]

instance Default Registration where
  def =
    Registration { registrationId = def
                 , registrationMethod = def
                 , registrationRegisterOptions = def }

data Registration = Registration { registrationId :: String
                                 , registrationMethod :: String
                                 , registrationRegisterOptions :: Maybe LSPAny }
 deriving (Show,Eq)

