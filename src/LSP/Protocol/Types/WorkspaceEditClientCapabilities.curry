-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.WorkspaceEditClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ChangeAnnotationsSupportOptions
import LSP.Protocol.Types.FailureHandlingKind
import LSP.Protocol.Types.ResourceOperationKind
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON WorkspaceEditClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDocumentChanges <- lookupMaybeFromJSON "documentChanges" vs
           parsedResourceOperations <- lookupMaybeFromJSON
                                        "resourceOperations"
                                        vs
           parsedFailureHandling <- lookupMaybeFromJSON "failureHandling" vs
           parsedNormalizesLineEndings <- lookupMaybeFromJSON
                                           "normalizesLineEndings"
                                           vs
           parsedChangeAnnotationSupport <- lookupMaybeFromJSON
                                             "changeAnnotationSupport"
                                             vs
           parsedMetadataSupport <- lookupMaybeFromJSON "metadataSupport" vs
           parsedSnippetEditSupport <- lookupMaybeFromJSON
                                        "snippetEditSupport"
                                        vs
           return
            WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges = parsedDocumentChanges
                                            , workspaceEditClientCapabilitiesResourceOperations = parsedResourceOperations
                                            , workspaceEditClientCapabilitiesFailureHandling = parsedFailureHandling
                                            , workspaceEditClientCapabilitiesNormalizesLineEndings = parsedNormalizesLineEndings
                                            , workspaceEditClientCapabilitiesChangeAnnotationSupport = parsedChangeAnnotationSupport
                                            , workspaceEditClientCapabilitiesMetadataSupport = parsedMetadataSupport
                                            , workspaceEditClientCapabilitiesSnippetEditSupport = parsedSnippetEditSupport }
      _ ->
        Left
         ("Unrecognized WorkspaceEditClientCapabilities value: " ++ ppJSON j)

instance ToJSON WorkspaceEditClientCapabilities where
  toJSON x =
    object
     [(.?=) "documentChanges"
       (workspaceEditClientCapabilitiesDocumentChanges x),  (.?=)
                                                             "resourceOperations"
                                                             (workspaceEditClientCapabilitiesResourceOperations
                                                               x),  (.?=)
                                                                     "failureHandling"
                                                                     (workspaceEditClientCapabilitiesFailureHandling
                                                                       x),  (.?=)
                                                                             "normalizesLineEndings"
                                                                             (workspaceEditClientCapabilitiesNormalizesLineEndings
                                                                               x),  (.?=)
                                                                                     "changeAnnotationSupport"
                                                                                     (workspaceEditClientCapabilitiesChangeAnnotationSupport
                                                                                       x),  (.?=)
                                                                                             "metadataSupport"
                                                                                             (workspaceEditClientCapabilitiesMetadataSupport
                                                                                               x),  (.?=)
                                                                                                     "snippetEditSupport"
                                                                                                     (workspaceEditClientCapabilitiesSnippetEditSupport
                                                                                                       x)]

instance Default WorkspaceEditClientCapabilities where
  def =
    WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges = def
                                    , workspaceEditClientCapabilitiesResourceOperations = def
                                    , workspaceEditClientCapabilitiesFailureHandling = def
                                    , workspaceEditClientCapabilitiesNormalizesLineEndings = def
                                    , workspaceEditClientCapabilitiesChangeAnnotationSupport = def
                                    , workspaceEditClientCapabilitiesMetadataSupport = def
                                    , workspaceEditClientCapabilitiesSnippetEditSupport = def }

data WorkspaceEditClientCapabilities = WorkspaceEditClientCapabilities { workspaceEditClientCapabilitiesDocumentChanges :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesResourceOperations :: Maybe [ResourceOperationKind]
                                                                       , workspaceEditClientCapabilitiesFailureHandling :: Maybe FailureHandlingKind
                                                                       , workspaceEditClientCapabilitiesNormalizesLineEndings :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesChangeAnnotationSupport :: Maybe ChangeAnnotationsSupportOptions
                                                                       , workspaceEditClientCapabilitiesMetadataSupport :: Maybe Bool
                                                                       , workspaceEditClientCapabilitiesSnippetEditSupport :: Maybe Bool }
 deriving (Show,Eq)

