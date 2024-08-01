-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentColorRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON DocumentColorRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            DocumentColorRegistrationOptions { documentColorRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                             , documentColorRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                             , documentColorRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized DocumentColorRegistrationOptions value: " ++ ppJSON j)

instance ToJSON DocumentColorRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentColorRegistrationOptionsDocumentSelector x),  (.?=)
                                                               "workDoneProgress"
                                                               (documentColorRegistrationOptionsWorkDoneProgress
                                                                 x),  (.?=)
                                                                       "id"
                                                                       (documentColorRegistrationOptionsId
                                                                         x)]

data DocumentColorRegistrationOptions = DocumentColorRegistrationOptions { documentColorRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                         , documentColorRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                         , documentColorRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

