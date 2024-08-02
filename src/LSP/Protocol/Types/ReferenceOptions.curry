-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ReferenceOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            ReferenceOptions { referenceOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized ReferenceOptions value: " ++ ppJSON j)

instance ToJSON ReferenceOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (referenceOptionsWorkDoneProgress x)]

instance Default ReferenceOptions where
  def = ReferenceOptions { referenceOptionsWorkDoneProgress = def }

data ReferenceOptions = ReferenceOptions { referenceOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

