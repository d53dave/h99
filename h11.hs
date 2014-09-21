import Data.List

data ListItem a = Single a | Multiple Int a
    deriving (Show)

getType :: [a] -> ListItem a
getType (x:[]) = Single x
getType (lst@(x:xs)) = Multiple (length lst) x

runLength :: Eq a => [a] -> [ListItem a]
runLength lst = map (\x -> (getType x)) $ group lst
-- where getType (x:[]) etc.
