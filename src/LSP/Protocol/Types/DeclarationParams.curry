-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationParams where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeclarationParams where
  fromJSON j =
    case j of
      JObject vs -> do return DeclarationParams {  }
      _ -> Left ("Unrecognized DeclarationParams value: " ++ ppJSON j)

data DeclarationParams = DeclarationParams {  }
 deriving (Show,Eq)

