data Candy = Cake String Double | Pack String Double Double

price :: Candy -> Double
price (Cake _ x) = x
price (Pack _ x y) = x * y

totalPrice :: [Candy] -> Double
totalPrice x = let 
                y = map price x
               in sum y

test = totalPrice [Cake "Cake1" 200, Pack "Pack1" 1000 0.2, Pack "Pack2" 600 0.5, Cake "Cake1" 300]              