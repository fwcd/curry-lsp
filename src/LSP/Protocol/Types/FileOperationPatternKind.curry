-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationPatternKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON FileOperationPatternKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "file" -> Right FileOperationPatternKindFile
         "folder" -> Right FileOperationPatternKindFolder
         _ ->
           Left ("Unrecognized FileOperationPatternKind value: " ++ ppJSON j)

data FileOperationPatternKind = FileOperationPatternKindFile
                              | FileOperationPatternKindFolder
 deriving (Show,Eq,Enum,Bounded,Ord)
