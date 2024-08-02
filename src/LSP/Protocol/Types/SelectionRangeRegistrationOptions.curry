-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SelectionRangeRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.DocumentSelector
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON SelectionRangeRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneProgress <- lookupMaybeFromJSON "workDoneProgress" vs
           parsedDocumentSelector <- lookupFromJSON "documentSelector" vs
           parsedId <- lookupMaybeFromJSON "id" vs
           return
            SelectionRangeRegistrationOptions { selectionRangeRegistrationOptionsWorkDoneProgress = parsedWorkDoneProgress
                                              , selectionRangeRegistrationOptionsDocumentSelector = parsedDocumentSelector
                                              , selectionRangeRegistrationOptionsId = parsedId }
      _ ->
        Left
         ("Unrecognized SelectionRangeRegistrationOptions value: "
           ++ ppJSON j)

instance ToJSON SelectionRangeRegistrationOptions where
  toJSON x =
    object
     [(.?=) "workDoneProgress"
       (selectionRangeRegistrationOptionsWorkDoneProgress x),  (.=)
                                                                "documentSelector"
                                                                (selectionRangeRegistrationOptionsDocumentSelector
                                                                  x),  (.?=)
                                                                        "id"
                                                                        (selectionRangeRegistrationOptionsId
                                                                          x)]

instance Default SelectionRangeRegistrationOptions where
  def =
    SelectionRangeRegistrationOptions { selectionRangeRegistrationOptionsWorkDoneProgress = def
                                      , selectionRangeRegistrationOptionsDocumentSelector = def
                                      , selectionRangeRegistrationOptionsId = def }

data SelectionRangeRegistrationOptions = SelectionRangeRegistrationOptions { selectionRangeRegistrationOptionsWorkDoneProgress :: Maybe Bool
                                                                           , selectionRangeRegistrationOptionsDocumentSelector :: Either DocumentSelector ()
                                                                           , selectionRangeRegistrationOptionsId :: Maybe String }
 deriving (Show,Eq)

