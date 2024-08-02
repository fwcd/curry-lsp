-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationPatternOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FileOperationPatternOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIgnoreCase <- lookupMaybeFromJSON "ignoreCase" vs
           return
            FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase = parsedIgnoreCase }
      _ ->
        Left ("Unrecognized FileOperationPatternOptions value: " ++ ppJSON j)

instance ToJSON FileOperationPatternOptions where
  toJSON x =
    object [(.?=) "ignoreCase" (fileOperationPatternOptionsIgnoreCase x)]

instance Default FileOperationPatternOptions where
  def =
    FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase = def }

data FileOperationPatternOptions = FileOperationPatternOptions { fileOperationPatternOptionsIgnoreCase :: Maybe Bool }
 deriving (Show,Eq)

