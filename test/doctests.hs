module Main where

import           Test.DocTest

main :: IO ()
main = doctest ["src/Data/String/Util.hs"]
