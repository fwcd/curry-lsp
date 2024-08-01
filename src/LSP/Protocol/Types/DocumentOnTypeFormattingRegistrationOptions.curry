-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentOnTypeFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentOnTypeFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs -> do return DocumentOnTypeFormattingRegistrationOptions {  }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingRegistrationOptions value: "
           ++ ppJSON j)

data DocumentOnTypeFormattingRegistrationOptions = DocumentOnTypeFormattingRegistrationOptions {  }
 deriving (Show,Eq)

