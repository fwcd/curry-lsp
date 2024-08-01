-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ReferenceContext
import LSP.Utils.JSON

instance FromJSON ReferenceParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedContext <- lookupFromJSON "context" vs
           return ReferenceParams { referenceParamsContext = parsedContext }
      _ -> Left ("Unrecognized ReferenceParams value: " ++ ppJSON j)

data ReferenceParams = ReferenceParams { referenceParamsContext :: ReferenceContext }
 deriving (Show,Eq)

