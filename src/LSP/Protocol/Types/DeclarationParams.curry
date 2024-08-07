-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeclarationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DeclarationParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           return
            DeclarationParams { declarationParamsTextDocument = parsedTextDocument
                              , declarationParamsPosition = parsedPosition
                              , declarationParamsWorkDoneToken = parsedWorkDoneToken
                              , declarationParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized DeclarationParams value: " ++ ppJSON j)

instance ToJSON DeclarationParams where
  toJSON x =
    object
     [(.=) "textDocument" (declarationParamsTextDocument x),  (.=) "position"
                                                               (declarationParamsPosition
                                                                 x),  (.?=)
                                                                       "workDoneToken"
                                                                       (declarationParamsWorkDoneToken
                                                                         x),  (.?=)
                                                                               "partialResultToken"
                                                                               (declarationParamsPartialResultToken
                                                                                 x)]

instance Default DeclarationParams where
  def =
    DeclarationParams { declarationParamsTextDocument = def
                      , declarationParamsPosition = def
                      , declarationParamsWorkDoneToken = def
                      , declarationParamsPartialResultToken = def }

data DeclarationParams = DeclarationParams { declarationParamsTextDocument :: TextDocumentIdentifier
                                           , declarationParamsPosition :: Position
                                           , declarationParamsWorkDoneToken :: Maybe ProgressToken
                                           , declarationParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

