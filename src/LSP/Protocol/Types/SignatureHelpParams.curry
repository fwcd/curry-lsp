-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.SignatureHelpParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.SignatureHelpContext
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON SignatureHelpParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedContext <- lookupMaybeFromJSON "context" vs
           return
            SignatureHelpParams { signatureHelpParamsTextDocument = parsedTextDocument
                                , signatureHelpParamsPosition = parsedPosition
                                , signatureHelpParamsWorkDoneToken = parsedWorkDoneToken
                                , signatureHelpParamsContext = parsedContext }
      _ -> Left ("Unrecognized SignatureHelpParams value: " ++ ppJSON j)

instance ToJSON SignatureHelpParams where
  toJSON x =
    object
     [(.=) "textDocument" (signatureHelpParamsTextDocument x),  (.=)
                                                                 "position"
                                                                 (signatureHelpParamsPosition
                                                                   x),  (.?=)
                                                                         "workDoneToken"
                                                                         (signatureHelpParamsWorkDoneToken
                                                                           x),  (.?=)
                                                                                 "context"
                                                                                 (signatureHelpParamsContext
                                                                                   x)]

data SignatureHelpParams = SignatureHelpParams { signatureHelpParamsTextDocument :: TextDocumentIdentifier
                                               , signatureHelpParamsPosition :: Position
                                               , signatureHelpParamsWorkDoneToken :: Maybe ProgressToken
                                               , signatureHelpParamsContext :: Maybe SignatureHelpContext }
 deriving (Show,Eq)

