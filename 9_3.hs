myfoldl _ l [] = l
myfoldl f l (x:xs) = myfoldl f (l `f` x) xs