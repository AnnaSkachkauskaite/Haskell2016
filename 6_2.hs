zipper :: (Num a) => [a] -> [(a, a)]
zipper x = zip x (tail x) 

sumprod :: (Num a) => [a] -> a
sumprod x = let 
             y = zipper x
             y' = map (\(x,y)-> x*y) y
            in sum y'