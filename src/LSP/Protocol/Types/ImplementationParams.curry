-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ImplementationParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON ImplementationParams where
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
            ImplementationParams { implementationParamsTextDocument = parsedTextDocument
                                 , implementationParamsPosition = parsedPosition
                                 , implementationParamsWorkDoneToken = parsedWorkDoneToken
                                 , implementationParamsPartialResultToken = parsedPartialResultToken }
      _ -> Left ("Unrecognized ImplementationParams value: " ++ ppJSON j)

instance ToJSON ImplementationParams where
  toJSON x =
    object
     [(.=) "textDocument" (implementationParamsTextDocument x),  (.=)
                                                                  "position"
                                                                  (implementationParamsPosition
                                                                    x),  (.?=)
                                                                          "workDoneToken"
                                                                          (implementationParamsWorkDoneToken
                                                                            x),  (.?=)
                                                                                  "partialResultToken"
                                                                                  (implementationParamsPartialResultToken
                                                                                    x)]

data ImplementationParams = ImplementationParams { implementationParamsTextDocument :: TextDocumentIdentifier
                                                 , implementationParamsPosition :: Position
                                                 , implementationParamsWorkDoneToken :: Maybe ProgressToken
                                                 , implementationParamsPartialResultToken :: Maybe ProgressToken }
 deriving (Show,Eq)

