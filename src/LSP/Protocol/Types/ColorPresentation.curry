-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ColorPresentation where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.TextEdit
import LSP.Utils.JSON

instance FromJSON ColorPresentation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedTextEdit <- lookupMaybeFromJSON "textEdit" vs
           parsedAdditionalTextEdits <- lookupMaybeFromJSON
                                         "additionalTextEdits"
                                         vs
           return
            ColorPresentation { colorPresentationLabel = parsedLabel
                              , colorPresentationTextEdit = parsedTextEdit
                              , colorPresentationAdditionalTextEdits = parsedAdditionalTextEdits }
      _ -> Left ("Unrecognized ColorPresentation value: " ++ ppJSON j)

data ColorPresentation = ColorPresentation { colorPresentationLabel :: String
                                           , colorPresentationTextEdit :: Maybe TextEdit
                                           , colorPresentationAdditionalTextEdits :: Maybe [TextEdit] }
 deriving (Show,Eq)

