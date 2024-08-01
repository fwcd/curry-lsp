-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ImplementationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ImplementationRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized ImplementationRegistrationOptions value: "
           ++ ppJSON j)

data ImplementationRegistrationOptions = ImplementationRegistrationOptions {  }
 deriving (Show,Eq)

