powerset [] = [[]]
powerset (x:xs) = let set = powerset xs
                  in set ++ (map (\t-> [x]++t) set)