-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentFormattingOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DocumentFormattingOptions { documentFormattingOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized DocumentFormattingOptions value: " ++ ppJSON j)

data DocumentFormattingOptions = DocumentFormattingOptions { documentFormattingOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

