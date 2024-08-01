-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeDefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return TypeDefinitionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized TypeDefinitionRegistrationOptions value: "
           ++ ppJSON j)

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions {  }
 deriving (Show,Eq)

