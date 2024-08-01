-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.ProgressToken
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON RenameParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedWorkDoneToken <- lookupMaybeFromJSON "workDoneToken" vs
           parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedNewName <- lookupFromJSON "newName" vs
           return
            RenameParams { renameParamsWorkDoneToken = parsedWorkDoneToken
                         , renameParamsTextDocument = parsedTextDocument
                         , renameParamsPosition = parsedPosition
                         , renameParamsNewName = parsedNewName }
      _ -> Left ("Unrecognized RenameParams value: " ++ ppJSON j)

instance ToJSON RenameParams where
  toJSON x =
    object
     [(.?=) "workDoneToken" (renameParamsWorkDoneToken x),  (.=)
                                                             "textDocument"
                                                             (renameParamsTextDocument
                                                               x),  (.=)
                                                                     "position"
                                                                     (renameParamsPosition
                                                                       x),  (.=)
                                                                             "newName"
                                                                             (renameParamsNewName
                                                                               x)]

data RenameParams = RenameParams { renameParamsWorkDoneToken :: Maybe ProgressToken
                                 , renameParamsTextDocument :: TextDocumentIdentifier
                                 , renameParamsPosition :: Position
                                 , renameParamsNewName :: String }
 deriving (Show,Eq)

