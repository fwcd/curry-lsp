-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FoldingRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.JSON

instance FromJSON FoldingRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            FoldingRangeRegistrationOptions { foldingRangeRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                            , foldingRangeRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                            , foldingRangeRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized FoldingRangeRegistrationOptions value: " ++ ppJSON j)

instance ToJSON FoldingRangeRegistrationOptions where
  toJSON x =
    object
     [(.=) "documentSelector"
       (foldingRangeRegistrationOptionsDocumentSelector x),  (.?=)
                                                              "workDoneProgress"
                                                              (foldingRangeRegistrationOptionsWorkDoneProgress
                                                                x),  (.?=)
                                                                      "id"
                                                                      (foldingRangeRegistrationOptionsId
                                                                        x)]

data FoldingRangeRegistrationOptions = FoldingRangeRegistrationOptions { foldingRangeRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                       , foldingRangeRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                       , foldingRangeRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

