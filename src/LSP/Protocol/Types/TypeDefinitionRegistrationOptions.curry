-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON TypeDefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            TypeDefinitionRegistrationOptions { typeDefinitionRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                              , typeDefinitionRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , typeDefinitionRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized TypeDefinitionRegistrationOptions value: "
           ++ ppJSON j)

data TypeDefinitionRegistrationOptions = TypeDefinitionRegistrationOptions { typeDefinitionRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                           , typeDefinitionRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , typeDefinitionRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

