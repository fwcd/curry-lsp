-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.InlineValueOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON InlineValueOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            InlineValueOptions { inlineValueOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized InlineValueOptions value: " ++ ppJSON j)

instance ToJSON InlineValueOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (inlineValueOptionsWorkDoneProgress x)]

data InlineValueOptions = InlineValueOptions { inlineValueOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

