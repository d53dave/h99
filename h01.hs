myLast :: [a] -> a
myLast [] = error "empty list has no last"
myLast (x:[]) = x
myLast (_:xs) = myLast xs
