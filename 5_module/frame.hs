f x j n | x == 1 || j == 1 = 1
        | x == n || j == n = 1
        | otherwise = 0
frame n = [[f x j n |x<-[1..n] ]|j<-[1..n]]