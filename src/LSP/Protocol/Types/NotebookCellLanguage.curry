-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.NotebookCellLanguage where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON NotebookCellLanguage where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLanguage <- lookupFromJSON "language" vs
           return
            NotebookCellLanguage { notebookCellLanguageLanguage = parsedLanguage }
      _ -> Left ("Unrecognized NotebookCellLanguage value: " ++ ppJSON j)

data NotebookCellLanguage = NotebookCellLanguage { notebookCellLanguageLanguage :: String }
 deriving (Show,Eq)

