-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.Unregistration where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
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

instance ToJSON Unregistration where
  toJSON x =
    object
     [(.=) "id" (unregistrationId x),  (.=) "method" (unregistrationMethod x)]

instance Default Unregistration where
  def = Unregistration { unregistrationId = def, unregistrationMethod = def }

data Unregistration = Unregistration { unregistrationId :: String
                                     , unregistrationMethod :: String }
 deriving (Show,Eq)

