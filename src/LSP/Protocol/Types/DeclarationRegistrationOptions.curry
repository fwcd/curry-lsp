-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeclarationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DeclarationRegistrationOptions value: " ++ ppJSON j)

data DeclarationRegistrationOptions = DeclarationRegistrationOptions {  }
 deriving (Show,Eq)

