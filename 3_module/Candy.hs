data Candy = Cake String Float | Sweet String Float Float
getPrice (Sweet _ p w) = p * w
getPrice (Cake _ p) = p
totalPrice [] = 0 
totalPrice (x:xs) = getPrice(x) + totalPrice(xs)
test = totalPrice [Cake "Cloud" 300, Cake "Sancho" 200, Sweet "Maska" 300 0.5, Cake "White" 150, Sweet "Golden" 1000 0.2]


