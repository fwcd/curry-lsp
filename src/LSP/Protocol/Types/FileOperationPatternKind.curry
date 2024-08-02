-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationPatternKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FileOperationPatternKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "file" -> Right FileOperationPatternKindFile
         "folder" -> Right FileOperationPatternKindFolder
         _ ->
           Left ("Unrecognized FileOperationPatternKind value: " ++ ppJSON j)

instance ToJSON FileOperationPatternKind where
  toJSON x =
    case x of
      FileOperationPatternKindFile -> toJSON "file"
      FileOperationPatternKindFolder -> toJSON "folder"

instance Default FileOperationPatternKind where
  def = FileOperationPatternKindFile

data FileOperationPatternKind = FileOperationPatternKindFile
                              | FileOperationPatternKindFolder
 deriving (Show,Eq,Enum,Bounded,Ord)

