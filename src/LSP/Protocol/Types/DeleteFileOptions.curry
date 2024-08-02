-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.DeleteFileOptions where

import JSON.Data
import JSON.Pretty
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON DeleteFileOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedRecursive <- lookupMaybeFromJSON "recursive" vs
           parsedIgnoreIfNotExists <- lookupMaybeFromJSON "ignoreIfNotExists"
                                       vs
           return
            DeleteFileOptions { deleteFileOptionsRecursive = parsedRecursive
                              , deleteFileOptionsIgnoreIfNotExists = parsedIgnoreIfNotExists }
      _ -> Left ("Unrecognized DeleteFileOptions value: " ++ ppJSON j)

instance ToJSON DeleteFileOptions where
  toJSON x =
    object
     [(.?=) "recursive" (deleteFileOptionsRecursive x),  (.?=)
                                                          "ignoreIfNotExists"
                                                          (deleteFileOptionsIgnoreIfNotExists
                                                            x)]

instance Default DeleteFileOptions where
  def =
    DeleteFileOptions { deleteFileOptionsRecursive = def
                      , deleteFileOptionsIgnoreIfNotExists = def }

data DeleteFileOptions = DeleteFileOptions { deleteFileOptionsRecursive :: Maybe Bool
                                           , deleteFileOptionsIgnoreIfNotExists :: Maybe Bool }
 deriving (Show,Eq)

