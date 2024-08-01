-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensEdit where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokensEdit where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStart <- lookupFromJSON "start" vs
           parsedDeleteCount <- lookupFromJSON "deleteCount" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            SemanticTokensEdit { semanticTokensEditStart = parsedStart
                               , semanticTokensEditDeleteCount = parsedDeleteCount
                               , semanticTokensEditData = parsedData }
      _ -> Left ("Unrecognized SemanticTokensEdit value: " ++ ppJSON j)

data SemanticTokensEdit = SemanticTokensEdit { semanticTokensEditStart :: Int
                                             , semanticTokensEditDeleteCount :: Int
                                             , semanticTokensEditData :: Maybe [Int] }
 deriving (Show,Eq)

