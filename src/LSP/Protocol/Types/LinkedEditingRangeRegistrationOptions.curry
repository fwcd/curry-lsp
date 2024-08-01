-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LinkedEditingRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LinkedEditingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return LinkedEditingRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized LinkedEditingRangeRegistrationOptions value: "
           ++ ppJSON j)

data LinkedEditingRangeRegistrationOptions = LinkedEditingRangeRegistrationOptions {  }
 deriving (Show,Eq)

