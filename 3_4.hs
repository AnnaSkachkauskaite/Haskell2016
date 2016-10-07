contain :: [Integer] -> Integer -> Bool
contain [] _ = False
contain (x:xs) a = if x == a then True else contain xs a

samedigit' :: [Integer] -> [Integer] -> Bool
samedigit' [] _ = False
samedigit' (x:xs) l = if contain l x' then True else samedigit' xs (x':l)
                    where x' = x `mod` 10

sameDigits :: [Integer] -> Bool
sameDigits x = samedigit' x []