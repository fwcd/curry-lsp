-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SemanticTokensRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SemanticTokensRegistrationOptions value: "
           ++ ppJSON j)

data SemanticTokensRegistrationOptions = SemanticTokensRegistrationOptions {  }
 deriving (Show,Eq)

