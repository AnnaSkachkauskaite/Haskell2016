check :: (a -> Bool) -> [a] -> Bool
check cond [] = False
check cond (x:xs) = if cond x then True else check cond xs