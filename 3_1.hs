min' :: (Ord a) => a -> a -> a
min' x y =  if x <= y then x else y
minlist :: (Ord a) => [a] -> a
minlist [x] = x
minlist (x:xs) = min' x (minlist xs)