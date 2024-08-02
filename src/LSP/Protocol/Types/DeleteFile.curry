-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeleteFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.DeleteFileOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DeleteFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           parsedUri <- lookupFromJSON "uri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            DeleteFile { deleteFileKind = parsedKind
                       , deleteFileAnnotationId = parsedAnnotationId
                       , deleteFileUri = parsedUri
                       , deleteFileOptions = parsedOptions }
      _ -> Left ("Unrecognized DeleteFile value: " ++ ppJSON j)

instance ToJSON DeleteFile where
  toJSON x =
    object
     [(.=) "kind" (deleteFileKind x),  (.?=) "annotationId"
                                        (deleteFileAnnotationId x),  (.=)
                                                                      "uri"
                                                                      (deleteFileUri
                                                                        x),  (.?=)
                                                                              "options"
                                                                              (deleteFileOptions
                                                                                x)]

instance Default DeleteFile where
  def =
    DeleteFile { deleteFileKind = def
               , deleteFileAnnotationId = def
               , deleteFileUri = def
               , deleteFileOptions = def }

data DeleteFile = DeleteFile { deleteFileKind :: String
                             , deleteFileAnnotationId :: Maybe ChangeAnnotationIdentifier
                             , deleteFileUri :: DocumentUri
                             , deleteFileOptions :: Maybe DeleteFileOptions }
 deriving (Show,Eq)

