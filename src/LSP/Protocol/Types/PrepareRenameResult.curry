-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.PrepareRenameResult where

import LSP.Protocol.Types.PrepareRenameDefaultBehavior
import LSP.Protocol.Types.PrepareRenamePlaceholder
import LSP.Protocol.Types.Range

type PrepareRenameResult = Either (Either Range PrepareRenamePlaceholder) PrepareRenameDefaultBehavior

