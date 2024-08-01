-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentRangeFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentRangeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentRangeFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentRangeFormattingRegistrationOptions value: "
           ++ ppJSON j)

data DocumentRangeFormattingRegistrationOptions = DocumentRangeFormattingRegistrationOptions {  }
 deriving (Show,Eq)

