coins n = [ [x, y, z] | x <- [0..(div n 2)], y <- [0..(div n 3)], z <- [0..(div n 5)], x * 2 + y * 3 + z * 5 == n]