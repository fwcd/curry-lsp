-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DocumentOnTypeFormattingParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FormattingOptions
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DocumentOnTypeFormattingParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedCh <- lookupFromJSON "ch" vs
           parsedOptions <- lookupFromJSON "options" vs
           return
            DocumentOnTypeFormattingParams { documentOnTypeFormattingParamsTextDocument = parsedTextDocument
                                           , documentOnTypeFormattingParamsPosition = parsedPosition
                                           , documentOnTypeFormattingParamsCh = parsedCh
                                           , documentOnTypeFormattingParamsOptions = parsedOptions }
      _ ->
        Left
         ("Unrecognized DocumentOnTypeFormattingParams value: " ++ ppJSON j)

instance ToJSON DocumentOnTypeFormattingParams where
  toJSON x =
    object
     [(.=) "textDocument"
       (documentOnTypeFormattingParamsTextDocument x),  (.=) "position"
                                                         (documentOnTypeFormattingParamsPosition
                                                           x),  (.=) "ch"
                                                                 (documentOnTypeFormattingParamsCh
                                                                   x),  (.=)
                                                                         "options"
                                                                         (documentOnTypeFormattingParamsOptions
                                                                           x)]

data DocumentOnTypeFormattingParams = DocumentOnTypeFormattingParams { documentOnTypeFormattingParamsTextDocument :: TextDocumentIdentifier
                                                                     , documentOnTypeFormattingParamsPosition :: Position
                                                                     , documentOnTypeFormattingParamsCh :: String
                                                                     , documentOnTypeFormattingParamsOptions :: FormattingOptions }
 deriving (Show,Eq)

