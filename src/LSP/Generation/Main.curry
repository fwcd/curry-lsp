module LSP.Generation.Main
  ( main
  ) where

import LSP.Generation.Generator ( metaModelToPrettyProgs )
import LSP.Generation.Model ( MetaModel (..) )
import LSP.Utils.General ( fromRight', forM_, replace )
import LSP.Utils.JSON ( FromJSON (..) )
import System.Directory ( createDirectoryIfMissing )

main :: IO ()
main = do
  let metaModelPath = "resources/metaModel.json"
      modulePrefix = "LSP.Protocol.Types"

  putStrLn $ "==> Reading meta model from " ++ metaModelPath ++ "..."
  rawMetaModel <- readFile metaModelPath
  let metaModel = (fromRight' $ fromJSONString rawMetaModel) :: MetaModel

  let dirPath = moduleNameToPath modulePrefix
  putStrLn $ "==> Preparing " ++ dirPath ++ "..."
  createDirectoryIfMissing True dirPath

  putStrLn $ "==> Generating source code from meta model..."
  forM_ (metaModelToPrettyProgs modulePrefix metaModel) $ \(name, prettyProg) -> do
    let path = moduleNameToPath name ++ ".curry"
    putStrLn $ "==> Writing " ++ path ++ "..."
    writeFile path $ unlines [autogenNote, prettyProg]

autogenNote :: String
autogenNote = "-- NOTE: This file is generated automatically and should not be edited manually!"

moduleNameToPath :: String -> FilePath
moduleNameToPath name = "src/" ++ replace '.' '/' name
