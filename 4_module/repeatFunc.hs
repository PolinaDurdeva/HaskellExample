repeatFunc f 1 = f
repeatFunc f n = (repeatFunc f (n-1)).f 