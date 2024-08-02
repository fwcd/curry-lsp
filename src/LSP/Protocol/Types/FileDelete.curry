-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileDelete where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FileDelete where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileDelete { fileDeleteUri = parsedUri }
      _ -> Left ("Unrecognized FileDelete value: " ++ ppJSON j)

instance ToJSON FileDelete where
  toJSON x = object [(.=) "uri" (fileDeleteUri x)]

instance Default FileDelete where
  def = FileDelete { fileDeleteUri = def }

data FileDelete = FileDelete { fileDeleteUri :: String }
 deriving (Show,Eq)

