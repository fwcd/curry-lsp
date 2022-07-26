module LSP.Generation.Main
  ( main
  ) where

import LSP.Generation.Generator ( metaModelToPrettyCurry )
import LSP.Generation.Model ( MetaModel (..) )
import LSP.Utils.General ( fromRight', (<.$>), (<$.>) )
import LSP.Utils.JSON ( FromJSON (..) )

autogenNote :: String
autogenNote = unlines ["-- NOTE: This file is generated automatically and should not be edited manually!"]

-- | Converts a module name to a Curry file path.
modToFilePath :: String -> String
modToFilePath = ("src/" ++) . modToFilePath'
  where
    modToFilePath' modName = case modName of
      ('.':ms) -> '/' : modToFilePath' ms
      (  m:ms) -> m : modToFilePath' ms
      ""       -> ".curry"

-- | Maps over the first element of a tuple.
main :: IO ()
main = do
  rawMetaModel <- readFile $ "resources/metaModel.json"
  let metaModel = (fromRight' $ fromJSONString rawMetaModel) :: MetaModel

  putStrLn "==> Generating Curry from meta-model..."
  let prettyProgs  = metaModelToPrettyCurry metaModel
      prettyProgs' = modToFilePath <.$> ((autogenNote ++) <$.> prettyProgs)

  mapM_ (uncurry writeFile) prettyProgs'
