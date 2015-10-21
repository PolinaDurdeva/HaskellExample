checkSumMono xs = checkSum xs (reverse xs) 0 
checkSum [] []  k  = (k > 1) 
checkSum _ []  k = (k > 1) 
checkSum [] _  k = (k > 1) 
checkSum (x:xs) (y:ys) k   | x == 5 = checkSum xs (y:ys) (k+1)
                           | (x + y) > 10 = checkSum (x:xs) ys k
	                       | (x + y) < 10 = checkSum xs (y:ys) k 
	                       | otherwise = True
	                       
                            