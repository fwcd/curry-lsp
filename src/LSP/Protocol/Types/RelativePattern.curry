-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RelativePattern where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Pattern
import LSP.Protocol.Types.WorkspaceFolder
import LSP.Utils.JSON

instance FromJSON RelativePattern where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedBaseUri <- lookupFromJSON "baseUri" vs
           parsedPattern <- lookupFromJSON "pattern" vs
           return
            RelativePattern { relativePatternBaseUri = parsedBaseUri
                            , relativePatternPattern = parsedPattern }
      _ -> Left ("Unrecognized RelativePattern value: " ++ ppJSON j)

instance ToJSON RelativePattern where
  toJSON x =
    object
     [(.=) "baseUri" (relativePatternBaseUri x),  (.=) "pattern"
                                                   (relativePatternPattern x)]

data RelativePattern = RelativePattern { relativePatternBaseUri :: Either WorkspaceFolder Uri
                                       , relativePatternPattern :: Pattern }
 deriving (Show,Eq)

