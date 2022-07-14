module LSP.Generation.Main
  ( main
  ) where

import LSP.Generation.Generator ( metaModelToPrettyCurry )
import LSP.Generation.Model ( MetaModel (..) )
import LSP.Utils.General ( fromRight' )
import LSP.Utils.JSON ( FromJSON (..) )

main :: IO ()
main = do
  rawMetaModel <- readFile "resources/metaModel.json"
  let metaModel = (fromRight' $ fromJSONString rawMetaModel) :: MetaModel

  putStrLn "==> Generating Curry from meta-model..."
  writeFile "src/LSP/Protocol.curry" $ metaModelToPrettyCurry "LSP.Protocol" metaModel
