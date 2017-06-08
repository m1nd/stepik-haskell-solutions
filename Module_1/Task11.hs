module Module_1.Task11 where

seqA :: Integer -> Integer
seqA n
    | n == 0 = 1
    | n == 1 = 2
    | n == 2 = 3
    | n > 2 = let
        helper 0 = 1
        helper 1 = 2
        helper 2 = 3
        helper n  = helper (n-1) + helper (n-2) - 2 * helper (n-3)
      in helper n 
    | otherwise = undefined