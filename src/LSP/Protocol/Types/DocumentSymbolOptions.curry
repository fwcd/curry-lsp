-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentSymbolOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedLabel <- lookupMaybeFromJSON "label" vs
           return
            DocumentSymbolOptions { documentSymbolOptionsWorkDoneProgress = parsedWorkDoneProgress
                                  , documentSymbolOptionsLabel = parsedLabel }
      _ -> Left ("Unrecognized DocumentSymbolOptions value: " ++ ppJSON j)

data DocumentSymbolOptions = DocumentSymbolOptions { documentSymbolOptionsWorkDoneProgress :: Maybe Bool
                                                   , documentSymbolOptionsLabel :: Maybe String }
 deriving (Show,Eq)

