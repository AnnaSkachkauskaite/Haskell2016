sumprod' :: (Num a) => [a] -> a -> a
sumprod' [] _ = 0
sumprod' (x:xs) a = a * x + sumprod' xs x

sumprod :: (Num a) => [a] -> a
sumprod (x:xs) = sumprod' xs x