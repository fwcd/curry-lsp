-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON ImplementationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            ImplementationRegistrationOptions { implementationRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                              , implementationRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , implementationRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized ImplementationRegistrationOptions value: "
           ++ ppJSON j)

data ImplementationRegistrationOptions = ImplementationRegistrationOptions { implementationRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                           , implementationRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , implementationRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

