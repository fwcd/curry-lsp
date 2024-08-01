-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON HoverRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return HoverRegistrationOptions {  }
      _ -> Left ("Unrecognized HoverRegistrationOptions value: " ++ ppJSON j)

data HoverRegistrationOptions = HoverRegistrationOptions {  }
 deriving (Show,Eq)

