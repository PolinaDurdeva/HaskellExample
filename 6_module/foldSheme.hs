data Sheme a = Resistance a| SeqResistance (Sheme a) (Sheme a) | ParResistance (Sheme a) (Sheme a)
foldScheme f e s@(SeqResistance a b) = let 
                                       res1 = foldScheme f e a
                                       res2 = foldScheme f e b
                                    in f s res1 res2
foldScheme f e s@(ParResistance a b) = let 
                                       res1 = foldScheme f e a
                                       res2 = foldScheme f e b
                                    in f s res1 res2
foldScheme f e s@(Resistance a) = f s a e

gResistance (Resistance a) _ _ = a
gResistance (SeqResistance a b) x y = x + y
gResistance (ParResistance a b) x y = (x * y) / (x + y)

test = foldScheme gResistance  0 (SeqResistance (ParResistance (Resistance 2)(Resistance 2))(Resistance 4))