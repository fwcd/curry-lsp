-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeclarationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationOptions {  }
      _ -> Left ("Unrecognized DeclarationOptions value: " ++ ppJSON j)

data DeclarationOptions = DeclarationOptions {  }
 deriving (Show,Eq)

