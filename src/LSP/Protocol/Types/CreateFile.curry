-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CreateFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.CreateFileOptions
import LSP.Utils.JSON

instance FromJSON CreateFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            CreateFile { createFileKind = parsedKind
                       , createFileAnnotationId = parsedAnnotationId
                       , createFileUri = parsedUri
                       , createFileOptions = parsedOptions }
      _ -> Left ("Unrecognized CreateFile value: " ++ ppJSON j)

instance ToJSON CreateFile where
  toJSON x =
    object
     [(.=) "kind" (createFileKind x),  (.?=) "annotationId"
                                        (createFileAnnotationId x),  (.=)
                                                                      "uri"
                                                                      (createFileUri
                                                                        x),  (.?=)
                                                                              "options"
                                                                              (createFileOptions
                                                                                x)]

data CreateFile = CreateFile { createFileKind :: String
                             , createFileAnnotationId :: Maybe ChangeAnnotationIdentifier
                             , createFileUri :: DocumentUri
                             , createFileOptions :: Maybe CreateFileOptions }
 deriving (Show,Eq)

