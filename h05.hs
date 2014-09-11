myRev :: [a] -> [a]

myRev (x:[]) = [x]
myRev (x:xs) = (myRev xs)++[x]
