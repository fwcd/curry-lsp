-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentFormattingRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON DocumentFormattingRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DocumentFormattingRegistrationOptions { documentFormattingRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                                  , documentFormattingRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ ->
        Left
         ("Unrecognized DocumentFormattingRegistrationOptions value: "
           ++ ppJSON j)

data DocumentFormattingRegistrationOptions = DocumentFormattingRegistrationOptions { documentFormattingRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                                   , documentFormattingRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

