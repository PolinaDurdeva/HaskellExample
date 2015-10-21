countOdd xs = foldr ((+).(\x -> mod x 2)) 0 xs 
countOdd1 xs = sum (map (\x -> mod x 2 ) xs)