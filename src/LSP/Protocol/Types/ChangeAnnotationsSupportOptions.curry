-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.ChangeAnnotationsSupportOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON ChangeAnnotationsSupportOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedGroupsOnLabel <- lookupMaybeFromJSON "groupsOnLabel" vs
           return
            ChangeAnnotationsSupportOptions { changeAnnotationsSupportOptionsGroupsOnLabel = parsedGroupsOnLabel }
      _ ->
        Left
         ("Unrecognized ChangeAnnotationsSupportOptions value: " ++ ppJSON j)

instance ToJSON ChangeAnnotationsSupportOptions where
  toJSON x =
    object
     [(.?=) "groupsOnLabel" (changeAnnotationsSupportOptionsGroupsOnLabel x)]

instance Default ChangeAnnotationsSupportOptions where
  def =
    ChangeAnnotationsSupportOptions { changeAnnotationsSupportOptionsGroupsOnLabel = def }

data ChangeAnnotationsSupportOptions = ChangeAnnotationsSupportOptions { changeAnnotationsSupportOptionsGroupsOnLabel :: Maybe Bool }
 deriving (Show,Eq)

