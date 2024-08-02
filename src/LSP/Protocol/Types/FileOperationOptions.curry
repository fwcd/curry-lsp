-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.FileOperationOptions where

import JSON.Data
import JSON.Pretty
import LSP.Protocol.Types.FileOperationRegistrationOptions
import LSP.Utils.Default
import LSP.Utils.JSON

instance FromJSON FileOperationOptions where
  fromJSON j =
    case j of
      JObject vs ->
        do parsedDidCreate <- lookupMaybeFromJSON "didCreate" vs
           parsedWillCreate <- lookupMaybeFromJSON "willCreate" vs
           parsedDidRename <- lookupMaybeFromJSON "didRename" vs
           parsedWillRename <- lookupMaybeFromJSON "willRename" vs
           parsedDidDelete <- lookupMaybeFromJSON "didDelete" vs
           parsedWillDelete <- lookupMaybeFromJSON "willDelete" vs
           return
            FileOperationOptions { fileOperationOptionsDidCreate = parsedDidCreate
                                 , fileOperationOptionsWillCreate = parsedWillCreate
                                 , fileOperationOptionsDidRename = parsedDidRename
                                 , fileOperationOptionsWillRename = parsedWillRename
                                 , fileOperationOptionsDidDelete = parsedDidDelete
                                 , fileOperationOptionsWillDelete = parsedWillDelete }
      _ -> Left ("Unrecognized FileOperationOptions value: " ++ ppJSON j)

instance ToJSON FileOperationOptions where
  toJSON x =
    object
     [(.?=) "didCreate" (fileOperationOptionsDidCreate x),  (.?=) "willCreate"
                                                             (fileOperationOptionsWillCreate
                                                               x),  (.?=)
                                                                     "didRename"
                                                                     (fileOperationOptionsDidRename
                                                                       x),  (.?=)
                                                                             "willRename"
                                                                             (fileOperationOptionsWillRename
                                                                               x),  (.?=)
                                                                                     "didDelete"
                                                                                     (fileOperationOptionsDidDelete
                                                                                       x),  (.?=)
                                                                                             "willDelete"
                                                                                             (fileOperationOptionsWillDelete
                                                                                               x)]

instance Default FileOperationOptions where
  def =
    FileOperationOptions { fileOperationOptionsDidCreate = def
                         , fileOperationOptionsWillCreate = def
                         , fileOperationOptionsDidRename = def
                         , fileOperationOptionsWillRename = def
                         , fileOperationOptionsDidDelete = def
                         , fileOperationOptionsWillDelete = def }

data FileOperationOptions = FileOperationOptions { fileOperationOptionsDidCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillCreate :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillRename :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsDidDelete :: Maybe FileOperationRegistrationOptions
                                                 , fileOperationOptionsWillDelete :: Maybe FileOperationRegistrationOptions }
 deriving (Show,Eq)

