sumDiv n = sum [x | x <- [1..(div n 2 + 1)], mod n x == 0]
perfects n = [x | x <- [6..n], sumDiv x == x]