-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ReferenceContext where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON ReferenceContext where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedIncludeDeclaration <- lookupFromJSON "includeDeclaration" vs
           return
            ReferenceContext { referenceContextIncludeDeclaration = parsedIncludeDeclaration }
      _ -> Left ("Unrecognized ReferenceContext value: " ++ ppJSON j)

instance ToJSON ReferenceContext where
  toJSON x =
    object [(.=) "includeDeclaration" (referenceContextIncludeDeclaration x)]

data ReferenceContext = ReferenceContext { referenceContextIncludeDeclaration :: Bool }
 deriving (Show,Eq)

