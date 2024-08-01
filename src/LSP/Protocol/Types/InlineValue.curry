-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValue where

import LSP.Protocol.Types.InlineValueEvaluatableExpression
import LSP.Protocol.Types.InlineValueText
import LSP.Protocol.Types.InlineValueVariableLookup

type InlineValue = Either (Either InlineValueText InlineValueVariableLookup) InlineValueEvaluatableExpression

