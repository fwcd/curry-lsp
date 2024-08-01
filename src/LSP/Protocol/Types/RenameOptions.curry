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
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedPrepareProvider <- lookupMaybeFromJSON "prepareProvider" vs
           return
            RenameOptions { renameOptionsWorkDoneProgress = parsedWorkDoneProgress
                          , renameOptionsPrepareProvider = parsedPrepareProvider }
      _ -> Left ("Unrecognized RenameOptions value: " ++ ppJSON j)

instance ToJSON RenameOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress" (renameOptionsWorkDoneProgress x),  (.?=)
                                                                    "prepareProvider"
                                                                    (renameOptionsPrepareProvider
                                                                      x)]

data RenameOptions = RenameOptions { renameOptionsWorkDoneProgress :: Maybe Bool
                                   , renameOptionsPrepareProvider :: Maybe Bool }
 deriving (Show,Eq)

