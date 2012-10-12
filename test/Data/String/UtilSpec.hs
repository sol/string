module Data.String.UtilSpec (main, spec) where

import           Test.Hspec
import           Test.QuickCheck

import           Data.String.Util
import qualified Data.Text as T

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "split" $ do
    it "behaves as its counterpart from Data.Text" $
      property $
        \(Blind p) xs -> split p xs == map T.unpack (T.split p (T.pack xs))
