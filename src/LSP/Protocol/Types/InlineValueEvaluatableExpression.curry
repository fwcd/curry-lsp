-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueEvaluatableExpression where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON InlineValueEvaluatableExpression where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedExpression <- lookupMaybeFromJSON "expression" vs
           return
            InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange = parsedRange
                                             , inlineValueEvaluatableExpressionExpression = parsedExpression }
      _ ->
        Left
         ("Unrecognized InlineValueEvaluatableExpression value: " ++ ppJSON j)

instance ToJSON InlineValueEvaluatableExpression where
  toJSON x =
    object
     [(.=) "range" (inlineValueEvaluatableExpressionRange x),  (.?=)
                                                                "expression"
                                                                (inlineValueEvaluatableExpressionExpression
                                                                  x)]

data InlineValueEvaluatableExpression = InlineValueEvaluatableExpression { inlineValueEvaluatableExpressionRange :: Range
                                                                         , inlineValueEvaluatableExpressionExpression :: Maybe String }
 deriving (Show,Eq)

