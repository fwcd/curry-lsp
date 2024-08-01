-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Unregistration where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON Unregistration where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedId <- lookupFromJSON "id" vs
           parsedMethod <- lookupFromJSON "method" vs
           return
            Unregistration { unregistrationId = parsedId
                           , unregistrationMethod = parsedMethod }
      _ -> Left ("Unrecognized Unregistration value: " ++ ppJSON j)

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }
 deriving (Show,Eq)

