-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileCreate where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FileCreate where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileCreate { fileCreateUri = parsedUri }
      _ -> Left ("Unrecognized FileCreate value: " ++ ppJSON j)

instance ToJSON FileCreate where
  toJSON x = object [(.=) "uri" (fileCreateUri x)]

instance Default FileCreate where
  def = FileCreate { fileCreateUri = def }

data FileCreate = FileCreate { fileCreateUri :: String }
 deriving (Show,Eq)

