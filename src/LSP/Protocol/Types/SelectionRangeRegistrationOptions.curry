-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SelectionRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return SelectionRangeRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized SelectionRangeRegistrationOptions value: "
           ++ ppJSON j)

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions {  }
 deriving (Show,Eq)

