-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.CodeLensParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON CodeLensParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedPartialResultToken <- lookupMaybeFromJSON
                                        "partialResultToken"
                                        vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           return
            CodeLensParams { codeLensParamsWorkDoneToken = parsedWorkDoneToken
                           , codeLensParamsPartialResultToken = parsedPartialResultToken
                           , codeLensParamsTextDocument = parsedTextDocument }
      _ -> Left ("Unrecognized CodeLensParams value: " ++ ppJSON j)

instance ToJSON CodeLensParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (codeLensParamsWorkDoneToken x),  (.?=)
                                                               "partialResultToken"
                                                               (codeLensParamsPartialResultToken
                                                                 x),  (.=)
                                                                       "textDocument"
                                                                       (codeLensParamsTextDocument
                                                                         x)]

instance Default CodeLensParams where
  def =
    CodeLensParams { codeLensParamsWorkDoneToken = def
                   , codeLensParamsPartialResultToken = def
                   , codeLensParamsTextDocument = def }

data CodeLensParams = CodeLensParams { codeLensParamsWorkDoneToken :: Maybe ProgressToken
                                     , codeLensParamsPartialResultToken :: Maybe ProgressToken
                                     , codeLensParamsTextDocument :: TextDocumentIdentifier }
 deriving (Show,Eq)

