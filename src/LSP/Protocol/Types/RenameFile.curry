-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameFile where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Support
import LSP.Protocol.Types.ChangeAnnotationIdentifier
import LSP.Protocol.Types.RenameFileOptions
import LSP.Utils.JSON

instance FromJSON RenameFile where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedKind <- lookupFromJSON "kind" vs
           parsedAnnotationId <- lookupMaybeFromJSON "annotationId" vs
           parsedOldUri <- lookupFromJSON "oldUri" vs
           parsedNewUri <- lookupFromJSON "newUri" vs
           parsedOptions <- lookupMaybeFromJSON "options" vs
           return
            RenameFile { renameFileKind = parsedKind
                       , renameFileAnnotationId = parsedAnnotationId
                       , renameFileOldUri = parsedOldUri
                       , renameFileNewUri = parsedNewUri
                       , renameFileOptions = parsedOptions }
      _ -> Left ("Unrecognized RenameFile value: " ++ ppJSON j)

instance ToJSON RenameFile where
  toJSON x =
    object
     [(.=) "kind" (renameFileKind x),  (.?=) "annotationId"
                                        (renameFileAnnotationId x),  (.=)
                                                                      "oldUri"
                                                                      (renameFileOldUri
                                                                        x),  (.=)
                                                                              "newUri"
                                                                              (renameFileNewUri
                                                                                x),  (.?=)
                                                                                      "options"
                                                                                      (renameFileOptions
                                                                                        x)]

data RenameFile = RenameFile { renameFileKind :: String
                             , renameFileAnnotationId :: Maybe ChangeAnnotationIdentifier
                             , renameFileOldUri :: DocumentUri
                             , renameFileNewUri :: DocumentUri
                             , renameFileOptions :: Maybe RenameFileOptions }
 deriving (Show,Eq)

