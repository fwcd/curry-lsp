-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON DeclarationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            DeclarationRegistrationOptions { declarationRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                           , declarationRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                           , declarationRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized DeclarationRegistrationOptions value: " ++ ppJSON j)

data DeclarationRegistrationOptions = DeclarationRegistrationOptions { declarationRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                     , declarationRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                     , declarationRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

