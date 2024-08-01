-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON MonikerRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            MonikerRegistrationOptions { monikerRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                       , monikerRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ ->
        Left ("Unrecognized MonikerRegistrationOptions value: " ++ ppJSON j)

data MonikerRegistrationOptions = MonikerRegistrationOptions { monikerRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                             , monikerRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

