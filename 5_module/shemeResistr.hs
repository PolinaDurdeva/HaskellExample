data Sheme = Resistance Float| SeqResistance Sheme Sheme | ParResistance Sheme Sheme
totalResistance (Resistance res)= res
totalResistance (SeqResistance res1 res2) = totalResistance res1 + totalResistance res2
totalResistance (ParResistance res1 res2) = let p1 = totalResistance res1 
                                                p2 = totalResistance res2 
                                            in p1*p2/(p1+p2)

test = totalResistance (SeqResistance (ParResistance (Resistance 2)(Resistance 2))(Resistance 4))