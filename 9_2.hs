countEven x = foldr (\xs acc -> if xs `mod` 2 == 0 then (acc + 1) else acc) 0 x
countEven1 x = length $ filter (\xs -> xs `mod` 2 == 0) x