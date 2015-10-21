checkSum [] = False
checkSum xs = findSum xs (map (\i -> 10 - i) xs)  0
findSum (x:xs) [] flag | (flag > 1) = True
                       | otherwise  = False
findSum (x:xs) (y:ys) flag = if (y == 5) then findSum (x:xs) ys (flag + 1) 
	                          else  if (x-y == 0)
	                             then True else findSum (x:xs) ys flag
