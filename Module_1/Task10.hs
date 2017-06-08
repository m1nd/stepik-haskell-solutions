module Module_1.Task10 where

fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == (-1) = 1
            | n == (-2) = -1
            | n > 1 = helper_plus n (0,1)
            | n < (-2) = helper_minus n (0, 1)
            | otherwise = undefined
helper_plus n (a, b)    | n==0 = a
                        | otherwise = helper_plus (n-1) (b, a+b)

helper_minus n (a, b)   | n==0 = a
                        | otherwise = helper_minus (n+1) (b, a-b)