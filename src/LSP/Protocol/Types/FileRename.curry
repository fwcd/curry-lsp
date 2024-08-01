-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileRename where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FileRename where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           return
            FileRename { fileRenameOldUri = parsedOldUri
                       , fileRenameNewUri = parsedNewUri }
      _ -> Left ("Unrecognized FileRename value: " ++ ppJSON j)

instance ToJSON FileRename where
  toJSON x =
    object
     [(.=) "oldUri" (fileRenameOldUri x),  (.=) "newUri" (fileRenameNewUri x)]

data FileRename = FileRename { fileRenameOldUri :: String
                             , fileRenameNewUri :: String }
 deriving (Show,Eq)

