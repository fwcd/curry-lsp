-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLens where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.Command
import LSP.Protocol.Types.Range
import LSP.Utils.JSON

instance FromJSON CodeLens where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRange <- lookupFromJSON "range" vs
           parsedCommand <- lookupMaybeFromJSON "command" vs
           parsedData <- lookupMaybeFromJSON "data" vs
           return
            CodeLens { codeLensRange = parsedRange
                     , codeLensCommand = parsedCommand
                     , codeLensData = parsedData }
      _ -> Left ("Unrecognized CodeLens value: " ++ ppJSON j)

data CodeLens = CodeLens { codeLensRange :: Range
                         , codeLensCommand :: Maybe Command
                         , codeLensData :: Maybe LSPAny }
 deriving (Show,Eq)

