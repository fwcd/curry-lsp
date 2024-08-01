-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlayHintRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlayHintRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlayHintRegistrationOptions {  }
      _ ->
        Left ("Unrecognized InlayHintRegistrationOptions value: " ++ ppJSON j)

data InlayHintRegistrationOptions = InlayHintRegistrationOptions {  }
 deriving (Show,Eq)

