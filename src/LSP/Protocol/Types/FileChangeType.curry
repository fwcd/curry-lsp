-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileChangeType where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FileChangeType where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: Int of
         1 -> Right FileChangeTypeCreated
         2 -> Right FileChangeTypeChanged
         3 -> Right FileChangeTypeDeleted
         _ -> Left ("Unrecognized FileChangeType value: " ++ ppJSON j)

data FileChangeType = FileChangeTypeCreated
                    | FileChangeTypeChanged
                    | FileChangeTypeDeleted
 deriving (Show,Eq,Enum,Bounded,Ord)

