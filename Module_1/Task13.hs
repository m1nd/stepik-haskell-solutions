module Module_1.Task13 where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integral f a b 1000 where
    integral f a b 0 = 0
    integral f a b n = h * (f (a) + f (a + h)) / 2 + integral f (a + h) b (n - 1)
      where h = (b - a) / n