-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileCreate where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FileCreate where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedUri <- lookupFromJSON "uri" vs
           return FileCreate { fileCreateUri = parsedUri }
      _ -> Left ("Unrecognized FileCreate value: " ++ ppJSON j)

data FileCreate = FileCreate { fileCreateUri :: String }
 deriving (Show,Eq)

