g n = f n-2 2
simple 4 = 1
simple k = if (mod k 2 = 0) then simple (mod k 2)
	           else if  
f n k = if (k <= n) then 
	        if simple(n) + simple(k) > then True
	         else  f n-1 k+1
simple k n p = if (p < n-1) then if   