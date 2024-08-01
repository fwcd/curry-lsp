-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON TypeDefinitionOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            TypeDefinitionOptions { typeDefinitionOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized TypeDefinitionOptions value: " ++ ppJSON j)

instance ToJSON TypeDefinitionOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (typeDefinitionOptionsWorkDoneProgress x)]

data TypeDefinitionOptions = TypeDefinitionOptions { typeDefinitionOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

