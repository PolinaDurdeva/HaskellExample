transpose xs | any (== []) xs = []
             | otherwise = (map head xs): transpose (map tail xs)