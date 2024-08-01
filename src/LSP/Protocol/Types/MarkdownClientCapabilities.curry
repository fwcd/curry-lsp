-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.MarkdownClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON MarkdownClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedParser <- lookupFromJSON "parser" vs
           parsedVersion <- lookupMaybeFromJSON "version" vs
           parsedAllowedTags <- lookupMaybeFromJSON "allowedTags" vs
           return
            MarkdownClientCapabilities { markdownClientCapabilitiesParser = parsedParser
                                       , markdownClientCapabilitiesVersion = parsedVersion
                                       , markdownClientCapabilitiesAllowedTags = parsedAllowedTags }
      _ ->
        Left ("Unrecognized MarkdownClientCapabilities value: " ++ ppJSON j)

instance ToJSON MarkdownClientCapabilities where
  toJSON x =
    object
     [(.=) "parser" (markdownClientCapabilitiesParser x),  (.?=) "version"
                                                            (markdownClientCapabilitiesVersion
                                                              x),  (.?=)
                                                                    "allowedTags"
                                                                    (markdownClientCapabilitiesAllowedTags
                                                                      x)]

data MarkdownClientCapabilities = MarkdownClientCapabilities { markdownClientCapabilitiesParser :: String
                                                             , markdownClientCapabilitiesVersion :: Maybe String
                                                             , markdownClientCapabilitiesAllowedTags :: Maybe [String] }
 deriving (Show,Eq)

