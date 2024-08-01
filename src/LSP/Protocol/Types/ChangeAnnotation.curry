-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ChangeAnnotation where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ChangeAnnotation where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedLabel <- lookupFromJSON "label" vs
           parsedNeedsConfirmation <- lookupMaybeFromJSON "needsConfirmation"
                                       vs
           parsedDescription <- lookupMaybeFromJSON "description" vs
           return
            ChangeAnnotation { changeAnnotationLabel = parsedLabel
                             , changeAnnotationNeedsConfirmation = parsedNeedsConfirmation
                             , changeAnnotationDescription = parsedDescription }
      _ -> Left ("Unrecognized ChangeAnnotation value: " ++ ppJSON j)

data ChangeAnnotation = ChangeAnnotation { changeAnnotationLabel :: String
                                         , changeAnnotationNeedsConfirmation :: Maybe Bool
                                         , changeAnnotationDescription :: Maybe String }
 deriving (Show,Eq)

