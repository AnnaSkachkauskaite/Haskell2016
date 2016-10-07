data Tree a = Empty | Node a (Tree a) (Tree a)

height :: Tree a -> Int
height Empty = 0
height (Node a Empty Empty) = 0
height (Node a left right) = max (height left) (height right) + 1
