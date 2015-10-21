euclid a b  = euc a b 0 1 1 0
euc _ 0 _ x2 _ y2 = (x2,y2)
euc a b x1 x2 y1 y2 =let 
                        q = div a b
                        r = a - q * b
                        x = x2 - q * x1
                        y = y2 - q * y1
                     in euc b r x x1 y y1