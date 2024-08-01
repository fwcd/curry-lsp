-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeleteFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.DeleteFileOptions
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

data DeleteFile = DeleteFile { deleteFileKind :: String
                             , deleteFileAnnotationId :: Maybe ChangeAnnotationIdentifier
                             , deleteFileUri :: DocumentUri
                             , deleteFileOptions :: Maybe DeleteFileOptions }
 deriving (Show,Eq)

