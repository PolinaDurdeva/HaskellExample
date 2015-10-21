approxSum xs = asum xs 0 
asum (x:xs) s | abs(x) >= 0.000001 = asum xs (s + x)
              | otherwise = s                                        
z = approxSum [1/(i*i)| i<- [1..]] 