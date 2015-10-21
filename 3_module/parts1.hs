parts' [x] 0 ys = []
parts' [x] s ys  = (s+1):ys
parts' (x:y:xs) s ys | x < y = parts' (y:xs) (s+1) ys
                     | (x >= y) && (s == 0) = []
                     | (x > y) && (s >= 1) = parts' (y:xs) 0 ((s+1):ys)
                     | (x == y) && (s >= 1)= parts' (y:xs) 0 ((s+1):ys)
help d 1 = False
help d m = if all(\x -> mod x m == 0) d then True else help d (m-1)
parts xs = let 
              d = parts' xs 0 [] 
           in if d == [] then False else help d (minimum d) 

