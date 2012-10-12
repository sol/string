module Data.String.Util (
  split
) where

-- | /O(n)/ Splits a 'String' into components delimited by separators,
-- where the predicate returns True for a separator element.  The
-- resulting components do not contain the separators.  Two adjacent
-- separators result in an empty component in the output.  eg.
--
-- >>> split (== 'a') "aabbaca"
-- ["","","bb","c",""]
-- >>> split (== 'a') ""
-- [""]
split :: (Char -> Bool) -> String -> [String]
split p = go
  where
    go xs = case break p xs of
      (ys, [])   -> [ys]
      (ys, _:zs) -> ys : go zs
