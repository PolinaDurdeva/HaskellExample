sumcos n = sumcos' n 1 ( cos 1 )
sumcos' 1 s p =  cos s / p
sumcos' n s p = sumcos' (n - 1) (s + n) (p + cos n)