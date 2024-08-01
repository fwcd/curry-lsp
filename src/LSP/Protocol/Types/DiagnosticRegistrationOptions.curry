-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DiagnosticRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DiagnosticRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DiagnosticRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DiagnosticRegistrationOptions value: " ++ ppJSON j)

data DiagnosticRegistrationOptions = DiagnosticRegistrationOptions {  }
 deriving (Show,Eq)

