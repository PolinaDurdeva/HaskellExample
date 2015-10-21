p n = p' n n
p' n k   | (n == 0) && (k ==0) = 1
         | (k == 0 ) = 0
         | (k > n ) = p' n n
         | (k <= n) = p' n  (k - 1) + p' (n - k) k

         