-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.HoverOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON HoverOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            HoverOptions { hoverOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ -> Left ("Unrecognized HoverOptions value: " ++ ppJSON j)

instance ToJSON HoverOptions where
  toJSON x =
    object [(.?=) "workDoneProgress" (hoverOptionsWorkDoneProgress x)]

data HoverOptions = HoverOptions { hoverOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

