sumfact n = sumfact' n 1 1 2
sumfact' 1 s p q =  s
sumfact' n s p q = sumfact' (n - 1) (s + p * q) (p * q) (q + 1)
