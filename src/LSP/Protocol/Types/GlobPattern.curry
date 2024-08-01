-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.GlobPattern where

import LSP.Protocol.Types.Pattern
import LSP.Protocol.Types.RelativePattern

type GlobPattern = Either Pattern RelativePattern

