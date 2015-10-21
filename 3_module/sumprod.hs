sumprod' xs (y:ys) = let 
                        l = zip xs ys
                     in sum (map (\(k,s) -> k*s) l)
sumprod xs | xs /= [] = sumprod' xs xs
           | otherwise = 0