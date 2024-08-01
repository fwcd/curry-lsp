-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CompletionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON CompletionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return CompletionRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized CompletionRegistrationOptions value: " ++ ppJSON j)

data CompletionRegistrationOptions = CompletionRegistrationOptions {  }
 deriving (Show,Eq)

