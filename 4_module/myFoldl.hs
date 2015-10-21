myfoldl f start [] = start
myfoldl f start (x:xs)= myfoldl f (f start x) xs