-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ShowDocumentResult where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ShowDocumentResult where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedSuccess <- lookupFromJSON "success" vs
           return
            ShowDocumentResult { showDocumentResultSuccess = parsedSuccess }
      _ -> Left ("Unrecognized ShowDocumentResult value: " ++ ppJSON j)

instance ToJSON ShowDocumentResult where
  toJSON x = object [(.=) "success" (showDocumentResultSuccess x)]

instance Default ShowDocumentResult where
  def = ShowDocumentResult { showDocumentResultSuccess = def }

data ShowDocumentResult = ShowDocumentResult { showDocumentResultSuccess :: Bool }
 deriving (Show,Eq)

