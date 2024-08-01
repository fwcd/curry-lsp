-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentHighlightOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DocumentHighlightOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DocumentHighlightOptions { documentHighlightOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized DocumentHighlightOptions value: " ++ ppJSON j)

instance ToJSON DocumentHighlightOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (documentHighlightOptionsWorkDoneProgress x)]

data DocumentHighlightOptions = DocumentHighlightOptions { documentHighlightOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

