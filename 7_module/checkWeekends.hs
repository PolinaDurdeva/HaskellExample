checkWeekends xs = let 
                      c = cycle[25,25,25,25,25,1,1]
                      temp = zipWith (-) c xs 
                   in all(>=0) temp