sumDiv n = sum [x | x <- [1..(div n 2 + 1)], mod n x == 0]
amicables n = [(x,y) | x <- [2..n], y <- [x+1..n], x < y, (sumDiv x == y)&&(sumDiv y == x)]