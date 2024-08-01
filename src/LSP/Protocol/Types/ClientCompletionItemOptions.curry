-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ClientCompletionItemOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientCompletionItemInsertTextModeOptions
import LSP.Protocol.Types.ClientCompletionItemResolveOptions
import LSP.Protocol.Types.CompletionItemTagOptions
import LSP.Protocol.Types.MarkupKind
import LSP.Utils.JSON

instance FromJSON ClientCompletionItemOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSnippetSupport <- lookupMaybeFromJSON "snippetSupport" vs
           parsedCommitCharactersSupport <- lookupMaybeFromJSON
                                             "commitCharactersSupport"
                                             vs
           parsedDocumentationFormat <- lookupMaybeFromJSON
                                         "documentationFormat"
                                         vs
           parsedDeprecatedSupport <- lookupMaybeFromJSON "deprecatedSupport"
                                       vs
           parsedPreselectSupport <- lookupMaybeFromJSON "preselectSupport" vs
           parsedTagSupport <- lookupMaybeFromJSON "tagSupport" vs
           parsedInsertReplaceSupport <- lookupMaybeFromJSON
                                          "insertReplaceSupport"
                                          vs
           parsedResolveSupport <- lookupMaybeFromJSON "resolveSupport" vs
           parsedInsertTextModeSupport <- lookupMaybeFromJSON
                                           "insertTextModeSupport"
                                           vs
           parsedLabelDetailsSupport <- lookupMaybeFromJSON
                                         "labelDetailsSupport"
                                         vs
           return
            ClientCompletionItemOptions { clientCompletionItemOptionsSnippetSupport = parsedSnippetSupport
                                        , clientCompletionItemOptionsCommitCharactersSupport = parsedCommitCharactersSupport
                                        , clientCompletionItemOptionsDocumentationFormat = parsedDocumentationFormat
                                        , clientCompletionItemOptionsDeprecatedSupport = parsedDeprecatedSupport
                                        , clientCompletionItemOptionsPreselectSupport = parsedPreselectSupport
                                        , clientCompletionItemOptionsTagSupport = parsedTagSupport
                                        , clientCompletionItemOptionsInsertReplaceSupport = parsedInsertReplaceSupport
                                        , clientCompletionItemOptionsResolveSupport = parsedResolveSupport
                                        , clientCompletionItemOptionsInsertTextModeSupport = parsedInsertTextModeSupport
                                        , clientCompletionItemOptionsLabelDetailsSupport = parsedLabelDetailsSupport }
      _ ->
        Left ("Unrecognized ClientCompletionItemOptions value: " ++ ppJSON j)

instance ToJSON ClientCompletionItemOptions where
  toJSON x =
    object
     [(.?=) "snippetSupport"
       (clientCompletionItemOptionsSnippetSupport x),  (.?=)
                                                        "commitCharactersSupport"
                                                        (clientCompletionItemOptionsCommitCharactersSupport
                                                          x),  (.?=)
                                                                "documentationFormat"
                                                                (clientCompletionItemOptionsDocumentationFormat
                                                                  x),  (.?=)
                                                                        "deprecatedSupport"
                                                                        (clientCompletionItemOptionsDeprecatedSupport
                                                                          x),  (.?=)
                                                                                "preselectSupport"
                                                                                (clientCompletionItemOptionsPreselectSupport
                                                                                  x),  (.?=)
                                                                                        "tagSupport"
                                                                                        (clientCompletionItemOptionsTagSupport
                                                                                          x),  (.?=)
                                                                                                "insertReplaceSupport"
                                                                                                (clientCompletionItemOptionsInsertReplaceSupport
                                                                                                  x),  (.?=)
                                                                                                        "resolveSupport"
                                                                                                        (clientCompletionItemOptionsResolveSupport
                                                                                                          x),  (.?=)
                                                                                                                "insertTextModeSupport"
                                                                                                                (clientCompletionItemOptionsInsertTextModeSupport
                                                                                                                  x),  (.?=)
                                                                                                                        "labelDetailsSupport"
                                                                                                                        (clientCompletionItemOptionsLabelDetailsSupport
                                                                                                                          x)]

data ClientCompletionItemOptions = ClientCompletionItemOptions { clientCompletionItemOptionsSnippetSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsCommitCharactersSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsDocumentationFormat :: Maybe [MarkupKind]
                                                               , clientCompletionItemOptionsDeprecatedSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsPreselectSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsTagSupport :: Maybe CompletionItemTagOptions
                                                               , clientCompletionItemOptionsInsertReplaceSupport :: Maybe Bool
                                                               , clientCompletionItemOptionsResolveSupport :: Maybe ClientCompletionItemResolveOptions
                                                               , clientCompletionItemOptionsInsertTextModeSupport :: Maybe ClientCompletionItemInsertTextModeOptions
                                                               , clientCompletionItemOptionsLabelDetailsSupport :: Maybe Bool }
 deriving (Show,Eq)

