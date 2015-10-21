check cond xs = f (map cond xs)
f [] = False
f (x:xs) = if (x == False) then f(xs) else x