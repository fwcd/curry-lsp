-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DefinitionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DefinitionOptions { definitionOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized DefinitionOptions value: " ++ ppJSON j)

instance ToJSON DefinitionOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (definitionOptionsWorkDoneProgress x)]

instance Default DefinitionOptions where
  def = DefinitionOptions { definitionOptionsWorkDoneProgress = def }

data DefinitionOptions = DefinitionOptions { definitionOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

