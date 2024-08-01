-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DefinitionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DefinitionRegistrationOptions value: " ++ ppJSON j)

data DefinitionRegistrationOptions = DefinitionRegistrationOptions {  }
 deriving (Show,Eq)

