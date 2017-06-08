module Module_1.Task12 where

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
  | x == 0 = (0, 1)
  | x < 0 = sum'n'count (-x)
  | otherwise = helper x 0 0
    where
      helper 0 sum count = (sum, count)
      helper x sum count = helper (div x 10) (sum + mod x 10) (count+1)