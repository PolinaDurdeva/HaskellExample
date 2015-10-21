data Tree a = Empty | Node a (Tree a) (Tree a)
foldTree f e (Node val l r) = let 
                                 resl = foldTree f e l
                                 resr = foldTree f e r
                              in f val resl resr
foldTree f e Empty = e
sumSqr = foldTree (\v l r ->v^2 + l + r) 0