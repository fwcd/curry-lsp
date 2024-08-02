-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON RenameRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedPrepareProvider <- lookupMaybeFromJSON "prepareProvider" vs
           return
            RenameRegistrationOptions { renameRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                      , renameRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                      , renameRegistrationOptionsPrepareProvider = parsedPrepareProvider }
      _ -> Left ("Unrecognized RenameRegistrationOptions value: " ++ ppJSON j)

instance ToJSON RenameRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (renameRegistrationOptionsDocumentSelector x),  (.?=)
                                                        "workDoneProgress"
                                                        (renameRegistrationOptionsWorkDoneProgress
                                                          x),  (.?=)
                                                                "prepareProvider"
                                                                (renameRegistrationOptionsPrepareProvider
                                                                  x)]

instance Default RenameRegistrationOptions where
  def =
    RenameRegistrationOptions { renameRegistrationOptionsDocumentSelector = def
                              , renameRegistrationOptionsWorkDoneProgress = def
                              , renameRegistrationOptionsPrepareProvider = def }

data RenameRegistrationOptions = RenameRegistrationOptions { renameRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                           , renameRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                           , renameRegistrationOptionsPrepareProvider :: Maybe Bool }
 deriving (Show,Eq)

