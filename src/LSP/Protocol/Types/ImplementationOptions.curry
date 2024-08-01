-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ImplementationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            ImplementationOptions { implementationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized ImplementationOptions value: " ++ ppJSON j)

instance ToJSON ImplementationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (implementationOptionsWorkDoneProgress x)]

data ImplementationOptions = ImplementationOptions { implementationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

