-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SemanticTokensClientCapabilities where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ClientSemanticTokensRequestOptions
import LSP.Protocol.Types.TokenFormat
import LSP.Utils.JSON

instance FromJSON SemanticTokensClientCapabilities where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDynamicRegistration <- lookupMaybeFromJSON
                                         "dynamicRegistration"
                                         vs
           parsedRequests <- lookupFromJSON "requests" vs
           parsedTokenTypes <- lookupFromJSON "tokenTypes" vs
           parsedTokenModifiers <- lookupFromJSON "tokenModifiers" vs
           parsedFormats <- lookupFromJSON "formats" vs
           parsedOverlappingTokenSupport <- lookupMaybeFromJSON
                                             "overlappingTokenSupport"
                                             vs
           parsedMultilineTokenSupport <- lookupMaybeFromJSON
                                           "multilineTokenSupport"
                                           vs
           parsedServerCancelSupport <- lookupMaybeFromJSON
                                         "serverCancelSupport"
                                         vs
           parsedAugmentsSyntaxTokens <- lookupMaybeFromJSON
                                          "augmentsSyntaxTokens"
                                          vs
           return
            SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration = parsedDynamicRegistration
                                             , semanticTokensClientCapabilitiesRequests = parsedRequests
                                             , semanticTokensClientCapabilitiesTokenTypes = parsedTokenTypes
                                             , semanticTokensClientCapabilitiesTokenModifiers = parsedTokenModifiers
                                             , semanticTokensClientCapabilitiesFormats = parsedFormats
                                             , semanticTokensClientCapabilitiesOverlappingTokenSupport = parsedOverlappingTokenSupport
                                             , semanticTokensClientCapabilitiesMultilineTokenSupport = parsedMultilineTokenSupport
                                             , semanticTokensClientCapabilitiesServerCancelSupport = parsedServerCancelSupport
                                             , semanticTokensClientCapabilitiesAugmentsSyntaxTokens = parsedAugmentsSyntaxTokens }
      _ ->
        Left
         ("Unrecognized SemanticTokensClientCapabilities value: " ++ ppJSON j)

data SemanticTokensClientCapabilities = SemanticTokensClientCapabilities { semanticTokensClientCapabilitiesDynamicRegistration :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesRequests :: ClientSemanticTokensRequestOptions
                                                                         , semanticTokensClientCapabilitiesTokenTypes :: [String]
                                                                         , semanticTokensClientCapabilitiesTokenModifiers :: [String]
                                                                         , semanticTokensClientCapabilitiesFormats :: [TokenFormat]
                                                                         , semanticTokensClientCapabilitiesOverlappingTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesMultilineTokenSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesServerCancelSupport :: Maybe Bool
                                                                         , semanticTokensClientCapabilitiesAugmentsSyntaxTokens :: Maybe Bool }
 deriving (Show,Eq)

