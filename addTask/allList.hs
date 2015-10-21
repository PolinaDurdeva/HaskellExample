allLists n 1 = [[x]| x <- [1..n]]
allLists n k = [ y:x |  y <- [1..n] , let g = allLists n (k - 1), x <- g]