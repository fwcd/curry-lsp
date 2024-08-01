-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationFilter where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileOperationPattern
import LSP.Utils.JSON

instance FromJSON FileOperationFilter where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedScheme <- lookupMaybeFromJSON "scheme" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            FileOperationFilter { fileOperationFilterScheme = parsedScheme
                                , fileOperationFilterPattern = parsedPattern }
      _ -> Left ("Unrecognized FileOperationFilter value: " ++ ppJSON j)

data FileOperationFilter = FileOperationFilter { fileOperationFilterScheme :: Maybe String
                                               , fileOperationFilterPattern :: FileOperationPattern }
 deriving (Show,Eq)

