data Scheme = Resistance Float
            | ConsistentResistance Scheme Scheme
            | ParallelResistance Scheme Scheme


totalResistance (Resistance r) = r
totalResistance (ConsistentResistance r1 r2) = totalResistance r1 + totalResistance r2
totalResistance (ParallelResistance r1 r2) = let
                                              x1 = totalResistance r1
                                              x2 = totalResistance r2
                                             in (x1 * x2) / (x1 + x2)


test = totalResistance (ConsistentResistance (Resistance 2) (ParallelResistance (Resistance 2) (Resistance 2)))