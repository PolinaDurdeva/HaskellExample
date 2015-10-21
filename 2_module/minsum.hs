minsum [] = 0
minsum (x:[]) = x
minsum (x:y:xs) = findSum (y:xs) (x+y) 
findSum (x:[]) s = s 
findSum (x:y:xs) s = let j = x+y 
                     in if (s <= j) then findSum (y:xs) s 
                     	else findSum (y:xs) j
