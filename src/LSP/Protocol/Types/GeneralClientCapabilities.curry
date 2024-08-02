-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.GeneralClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.MarkdownClientCapabilities
import LSP.Protocol.Types.PositionEncodingKind
import LSP.Protocol.Types.RegularExpressionsClientCapabilities
import LSP.Protocol.Types.StaleRequestSupportOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON GeneralClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedStaleRequestSupport <- lookupMaybeFromJSON
                                         "staleRequestSupport"
                                         vs
           parsedRegularExpressions <- lookupMaybeFromJSON
                                        "regularExpressions"
                                        vs
           parsedMarkdown <- lookupMaybeFromJSON "markdown" vs
           parsedPositionEncodings <- lookupMaybeFromJSON "positionEncodings"
                                       vs
           return
            GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport = parsedStaleRequestSupport
                                      , generalClientCapabilitiesRegularExpressions = parsedRegularExpressions
                                      , generalClientCapabilitiesMarkdown = parsedMarkdown
                                      , generalClientCapabilitiesPositionEncodings = parsedPositionEncodings }
      _ -> Left ("Unrecognized GeneralClientCapabilities value: " ++ ppJSON j)

instance ToJSON GeneralClientCapabilities where
  toJSON x =
    object
     [(.?=) "staleRequestSupport"
       (generalClientCapabilitiesStaleRequestSupport x),  (.?=)
                                                           "regularExpressions"
                                                           (generalClientCapabilitiesRegularExpressions
                                                             x),  (.?=)
                                                                   "markdown"
                                                                   (generalClientCapabilitiesMarkdown
                                                                     x),  (.?=)
                                                                           "positionEncodings"
                                                                           (generalClientCapabilitiesPositionEncodings
                                                                             x)]

instance Default GeneralClientCapabilities where
  def =
    GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport = def
                              , generalClientCapabilitiesRegularExpressions = def
                              , generalClientCapabilitiesMarkdown = def
                              , generalClientCapabilitiesPositionEncodings = def }

data GeneralClientCapabilities = GeneralClientCapabilities { generalClientCapabilitiesStaleRequestSupport :: Maybe StaleRequestSupportOptions
                                                           , generalClientCapabilitiesRegularExpressions :: Maybe RegularExpressionsClientCapabilities
                                                           , generalClientCapabilitiesMarkdown :: Maybe MarkdownClientCapabilities
                                                           , generalClientCapabilitiesPositionEncodings :: Maybe [PositionEncodingKind] }
 deriving (Show,Eq)

