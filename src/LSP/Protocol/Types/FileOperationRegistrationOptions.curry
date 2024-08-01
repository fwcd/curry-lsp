-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationRegistrationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileOperationFilter
import LSP.Utils.JSON

instance FromJSON FileOperationRegistrationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedFilters <- lookupFromJSON "filters" vs
           return
            FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters = parsedFilters }
      _ ->
        Left
         ("Unrecognized FileOperationRegistrationOptions value: " ++ ppJSON j)

data FileOperationRegistrationOptions = FileOperationRegistrationOptions { fileOperationRegistrationOptionsFilters :: [FileOperationFilter] }
 deriving (Show,Eq)

