isPalindrome :: (Eq a) => [a] -> Bool

isPalindrome list   | even len = (fst s) == (reverse $ snd s)
                    | otherwise = (fst s) == (reverse $ tail $ snd s)
                    where
                        len = length list
                        s = splitAt (len `div` 2) list

