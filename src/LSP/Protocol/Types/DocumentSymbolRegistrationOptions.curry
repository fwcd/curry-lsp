-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentSymbolRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON DocumentSymbolRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedLabel <- lookupMaybeFromJSON "label" vs
           return
            DocumentSymbolRegistrationOptions { documentSymbolRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                              , documentSymbolRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , documentSymbolRegistrationOptionsLabel = parsedLabel }
      _ ->
        Left
         ("Unrecognized DocumentSymbolRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON DocumentSymbolRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (documentSymbolRegistrationOptionsDocumentSelector x),  (.?=)
                                                                "workDoneProgress"
                                                                (documentSymbolRegistrationOptionsWorkDoneProgress
                                                                  x),  (.?=)
                                                                        "label"
                                                                        (documentSymbolRegistrationOptionsLabel
                                                                          x)]

data DocumentSymbolRegistrationOptions = DocumentSymbolRegistrationOptions { documentSymbolRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                           , documentSymbolRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , documentSymbolRegistrationOptionsLabel :: Maybe String }
 deriving (Show,Eq)

