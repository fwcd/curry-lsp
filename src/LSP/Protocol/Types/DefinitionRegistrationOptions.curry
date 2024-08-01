-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON DefinitionRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           return
            DefinitionRegistrationOptions { definitionRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                          , definitionRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress }
      _ ->
        Left
         ("Unrecognized DefinitionRegistrationOptions value: " ++ ppJSON j)

instance ToJSON DefinitionRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (definitionRegistrationOptionsDocumentSelector x),  (.?=)
                                                            "workDoneProgress"
                                                            (definitionRegistrationOptionsWorkDoneProgress
                                                              x)]

data DefinitionRegistrationOptions = DefinitionRegistrationOptions { definitionRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                   , definitionRegistrationOptionsWorkDoneProgress :: Maybe Bool }
 deriving (Show,Eq)

