almostLast :: [a] -> a

almostLast (x:_:[]) = x
almostLast (_:xs) = almostLast xs
