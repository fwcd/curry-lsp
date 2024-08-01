-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CodeLensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CodeLensRegistrationOptions {  }
      _ ->
        Left ("Unrecognized CodeLensRegistrationOptions value: " ++ ppJSON j)

data CodeLensRegistrationOptions = CodeLensRegistrationOptions {  }
 deriving (Show,Eq)

