-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MonikerRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
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

instance ToJSON MonikerRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (monikerRegistrationOptionsDocumentSelector x),  (.?=)
                                                         "workDoneProgress"
                                                         (monikerRegistrationOptionsWorkDoneProgress
                                                           x)]

instance Default MonikerRegistrationOptions where
  def =
    MonikerRegistrationOptions { monikerRegistrationOptionsDocumentSelector = def
                               , monikerRegistrationOptionsWorkDoneProgress = def }

data MonikerRegistrationOptions = MonikerRegistrationOptions { monikerRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                             , monikerRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

