dist :: (Double, Double) -> (Double, Double) -> Double
dist a b = sqrt((fst a - fst b)^2 + (snd a - snd b)^2)

isosc :: (Double, Double) -> (Double, Double) -> (Double, Double) -> Bool
isosc a b c = (dist a b == dist b c) || (dist a b == dist a c) || (dist a c == dist b c)