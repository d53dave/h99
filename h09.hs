-- Pack consecutive duplicates of list elements into sublists.
pack :: Eq a => [a] -> [[a]]

pack [] = []
pack (x:xs) = let (first,rest) = span (==x) xs
                in (x:first) : pack rest

-- Data.List has a group function. does the same thing.
