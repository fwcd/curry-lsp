-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON RenameOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedPrepareProvider <- lookupMaybeFromJSON "prepareProvider" vs
           return
            RenameOptions { renameOptionsPrepareProvider = parsedPrepareProvider }
      _ -> Left ("Unrecognized RenameOptions value: " ++ ppJSON j)

data RenameOptions = RenameOptions { renameOptionsPrepareProvider :: Maybe Bool }
 deriving (Show,Eq)

