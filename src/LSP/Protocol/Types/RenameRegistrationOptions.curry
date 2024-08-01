-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON RenameRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return RenameRegistrationOptions {  }
      _ -> Left ("Unrecognized RenameRegistrationOptions value: " ++ ppJSON j)

data RenameRegistrationOptions = RenameRegistrationOptions {  }
 deriving (Show,Eq)

