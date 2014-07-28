{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import System.Environment (getArgs)

app = do
  get "/" $
    text "Hello world!"

main :: IO ()
main = do
  port:_ <- getArgs
  scotty (read port :: Int) app
