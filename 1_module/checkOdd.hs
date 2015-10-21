checkOdd [] = False
checkOdd (x:xs) = if  ((mod x 2) /= 0 ) 
                  then True 
                  else checkOdd xs