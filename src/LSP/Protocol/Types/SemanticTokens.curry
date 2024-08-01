-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokens where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON SemanticTokens where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedData <- lookupFromJSON "data" vs
           return
            SemanticTokens { semanticTokensResultId = parsedResultId
                           , semanticTokensData = parsedData }
      _ -> Left ("Unrecognized SemanticTokens value: " ++ ppJSON j)

instance ToJSON SemanticTokens where
  toJSON x =
    object
     [(.?=) "resultId" (semanticTokensResultId x),  (.=) "data"
                                                     (semanticTokensData x)]

data SemanticTokens = SemanticTokens { semanticTokensResultId :: Maybe String
                                     , semanticTokensData :: [Int] }
 deriving (Show,Eq)

