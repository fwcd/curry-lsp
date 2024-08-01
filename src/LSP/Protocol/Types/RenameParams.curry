-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.RenameParams where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.Position
import LSP.Protocol.Types.TextDocumentIdentifier
import LSP.Utils.JSON

instance FromJSON RenameParams where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedTextDocument <- lookupFromJSON "textDocument" vs
           parsedPosition <- lookupFromJSON "position" vs
           parsedNewName <- lookupFromJSON "newName" vs
           return
            RenameParams { renameParamsTextDocument = parsedTextDocument
                         , renameParamsPosition = parsedPosition
                         , renameParamsNewName = parsedNewName }
      _ -> Left ("Unrecognized RenameParams value: " ++ ppJSON j)

data RenameParams = RenameParams { renameParamsTextDocument :: TextDocumentIdentifier
                                 , renameParamsPosition :: Position
                                 , renameParamsNewName :: String }
 deriving (Show,Eq)

