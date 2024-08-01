-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON DeclarationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DeclarationOptions { declarationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized DeclarationOptions value: " ++ ppJSON j)

instance ToJSON DeclarationOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (declarationOptionsWorkDoneProgress x)]

data DeclarationOptions = DeclarationOptions { declarationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

