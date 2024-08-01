-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ExecuteCommandRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ExecuteCommandRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return ExecuteCommandRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized ExecuteCommandRegistrationOptions value: "
           ++ ppJSON j)

data ExecuteCommandRegistrationOptions = ExecuteCommandRegistrationOptions {  }
 deriving (Show,Eq)

