module LSP.Generation.Main
  ( main
  ) where

import LSP.Generation.Generator ( metaModelToPrettyProgs )
import LSP.Generation.Model ( MetaModel (..) )
import LSP.Utils.General ( fromRight', forM_, replace )
import LSP.Utils.JSON ( FromJSON (..) )

main :: IO ()
main = do
  putStrLn "==> Reading meta model..."
  rawMetaModel <- readFile "resources/metaModel.json"
  let metaModel = (fromRight' $ fromJSONString rawMetaModel) :: MetaModel

  putStrLn "==> Generating Curry from meta model..."
  forM_ (metaModelToPrettyProgs "LSP.Protocol.Types" metaModel) $ \(name, prettyProg) -> do
    let path = moduleNameToPath name
    putStrLn $ "==> Writing " ++ path ++ "..."
    writeFile path $ unlines [autogenNote, prettyProg]

autogenNote :: String
autogenNote = "-- NOTE: This file is generated automatically and should not be edited manually!"

moduleNameToPath :: String -> FilePath
moduleNameToPath name = "src/" ++ replace '.' '/' name ++ ".curry"
