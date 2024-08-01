-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeActionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeActionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeActionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CodeActionRegistrationOptions value: " ++ ppJSON j)

data CodeActionRegistrationOptions = CodeActionRegistrationOptions {  }
 deriving (Show,Eq)

