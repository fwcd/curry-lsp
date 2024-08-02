-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeLensRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedResolveProvider <- lookupMaybeFromJSON "resolveProvider" vs
           return
            CodeLensRegistrationOptions { codeLensRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                        , codeLensRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                        , codeLensRegistrationOptionsResolveProvider = parsedResolveProvider }
      _ ->
        Left ("Unrecognized CodeLensRegistrationOptions value: " ++ ppJSON j)

instance ToJSON CodeLensRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (codeLensRegistrationOptionsDocumentSelector x),  (.?=)
                                                          "workDoneProgress"
                                                          (codeLensRegistrationOptionsWorkDoneProgress
                                                            x),  (.?=)
                                                                  "resolveProvider"
                                                                  (codeLensRegistrationOptionsResolveProvider
                                                                    x)]

instance Default CodeLensRegistrationOptions where
  def =
    CodeLensRegistrationOptions { codeLensRegistrationOptionsDocumentSelector = def
                                , codeLensRegistrationOptionsWorkDoneProgress = def
                                , codeLensRegistrationOptionsResolveProvider = def }

data CodeLensRegistrationOptions = CodeLensRegistrationOptions { codeLensRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                               , codeLensRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                               , codeLensRegistrationOptionsResolveProvider :: Maybe Bool }
 deriving (Show,Eq)

