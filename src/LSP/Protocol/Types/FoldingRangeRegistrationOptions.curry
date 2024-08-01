-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FoldingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return FoldingRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized FoldingRangeRegistrationOptions value: " ++ ppJSON j)

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions {  }
 deriving (Show,Eq)

