myLen :: [a] -> Integer
myLen lst = myLenAcc lst 0

myLenAcc :: [a] -> Integer -> Integer
myLenAcc [] acc = acc
myLenAcc (x:xs) acc = myLenAcc xs (acc+1)

myLen' :: [a] -> Int
myLen' lst = length lst
