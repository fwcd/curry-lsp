-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationPattern where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileOperationPatternKind
import LSP.Protocol.Types.FileOperationPatternOptions
import LSP.Utils.JSON

instance FromJSON FileOperationPattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGlob <- lookupFromJSON "glob" vs
           parsedMatches <- lookupMaybeFromJSON "matches" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            FileOperationPattern { fileOperationPatternGlob = parsedGlob
                                 , fileOperationPatternMatches = parsedMatches
                                 , fileOperationPatternOptions = parsedOptions }
      _ -> Left ("Unrecognized FileOperationPattern value: " ++ ppJSON j)

instance ToJSON FileOperationPattern where
  toJSON x =
    object
     [(.=) "glob" (fileOperationPatternGlob x),  (.?=) "matches"
                                                  (fileOperationPatternMatches
                                                    x),  (.?=) "options"
                                                          (fileOperationPatternOptions
                                                            x)]

data FileOperationPattern = FileOperationPattern { fileOperationPatternGlob :: String
                                                 , fileOperationPatternMatches :: Maybe FileOperationPatternKind
                                                 , fileOperationPatternOptions :: Maybe FileOperationPatternOptions }
 deriving (Show,Eq)

