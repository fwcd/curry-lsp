-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineValueRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return InlineValueRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized InlineValueRegistrationOptions value: " ++ ppJSON j)

data InlineValueRegistrationOptions = InlineValueRegistrationOptions {  }
 deriving (Show,Eq)

