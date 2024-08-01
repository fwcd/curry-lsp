-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentFormattingRegistrationOptions value: "
           ++ ppJSON j)

data DocumentFormattingRegistrationOptions = DocumentFormattingRegistrationOptions {  }
 deriving (Show,Eq)

