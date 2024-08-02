-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.TypeDefinitionParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON TypeDefinitionParams where
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
            TypeDefinitionParams { typeDefinitionParamsTextDocument = parsedTextDocument
                                 , typeDefinitionParamsPosition = parsedPosition
                                 , typeDefinitionParamsWorkDoneToken = parsedWorkDoneToken
                                 , typeDefinitionParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized TypeDefinitionParams value: " ++ ppJSON j)

instance ToJSON TypeDefinitionParams where
  toJSON x =
    object
     [(.=) "textDocument" (typeDefinitionParamsTextDocument x),  (.=)
                                                                  "position"
                                                                  (typeDefinitionParamsPosition
                                                                    x),  (.?=)
                                                                          "workDoneToken"
                                                                          (typeDefinitionParamsWorkDoneToken
                                                                            x),  (.?=)
                                                                                  "partialResultToken"
                                                                                  (typeDefinitionParamsPartialResultToken
                                                                                    x)]

instance Default TypeDefinitionParams where
  def =
    TypeDefinitionParams { typeDefinitionParamsTextDocument = def
                         , typeDefinitionParamsPosition = def
                         , typeDefinitionParamsWorkDoneToken = def
                         , typeDefinitionParamsPartialResultToken = def }

data TypeDefinitionParams = TypeDefinitionParams { typeDefinitionParamsTextDocument :: TextDocumentIdentifier
                                                 , typeDefinitionParamsPosition :: Position
                                                 , typeDefinitionParamsWorkDoneToken :: Maybe ProgressToken
                                                 , typeDefinitionParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

