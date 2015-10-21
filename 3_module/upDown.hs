up [x] _ = False
up (x:y:xs) s | x < y = up (y:xs) True
              | (x >= y) && s = down (y:xs) 
              | otherwise = False
down [x] = True
down (x:y:xs) | x > y  = down (y:xs)
              | otherwise = False
upDown [] = False              
upDown xs = up xs False