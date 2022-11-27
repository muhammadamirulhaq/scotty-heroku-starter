{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import System.Environment

main = do
  port <- getEnv "PORT"
  scotty (fromIntegral $ read port) $ do
    get "/" $ do
      html "Yeay that's work!"