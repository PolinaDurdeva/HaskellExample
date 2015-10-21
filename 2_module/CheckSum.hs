import Debug.Trace
checkSum [] = False
checkSum (x:xs) =  findSum (map (\i -> x + i) xs) xs
findSum [] [] = False
findSum [] xs = checkSum xs  
findSum (x:xs) ys = if (x == 10) then True else findSum xs ys