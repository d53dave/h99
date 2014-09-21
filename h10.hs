import Data.List

runLength :: Eq a => [a] -> [(Int, a)]
runLength lst = map (\x -> (length x, head x)) $ group lst
