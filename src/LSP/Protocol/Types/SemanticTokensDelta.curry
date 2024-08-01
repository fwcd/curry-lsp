-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensDelta where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.SemanticTokensEdit
import LSP.Utils.JSON

instance FromJSON SemanticTokensDelta where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedResultId <- lookupMaybeFromJSON "resultId" vs
           parsedEdits <- lookupFromJSON "edits" vs
           return
            SemanticTokensDelta { semanticTokensDeltaResultId = parsedResultId
                                , semanticTokensDeltaEdits = parsedEdits }
      _ -> Left ("Unrecognized SemanticTokensDelta value: " ++ ppJSON j)

instance ToJSON SemanticTokensDelta where
  toJSON x =
    object
     [(.?=) "resultId" (semanticTokensDeltaResultId x),  (.=) "edits"
                                                          (semanticTokensDeltaEdits
                                                            x)]

data SemanticTokensDelta = SemanticTokensDelta { semanticTokensDeltaResultId :: Maybe String
                                               , semanticTokensDeltaEdits :: [SemanticTokensEdit] }
 deriving (Show,Eq)

