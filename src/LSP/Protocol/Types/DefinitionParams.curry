-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DefinitionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON DefinitionParams where
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
            DefinitionParams { definitionParamsTextDocument = parsedTextDocument
                             , definitionParamsPosition = parsedPosition
                             , definitionParamsWorkDoneToken = parsedWorkDoneToken
                             , definitionParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized DefinitionParams value: " ++ ppJSON j)

data DefinitionParams = DefinitionParams { definitionParamsTextDocument :: TextDocumentIdentifier
                                         , definitionParamsPosition :: Position
                                         , definitionParamsWorkDoneToken :: Maybe ProgressToken
                                         , definitionParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

