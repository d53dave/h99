data NestedList a = Elem a | List [NestedList a]
 
flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

flatten2 :: NestedList a -> [a]
flatten2 (Elem x ) = [x]
flatten2 (List xs) =  foldr (++) [] $ map flatten3 xs

flatten3 = reverse . rec []
  where
    rec acc (List []) = acc
    rec acc (Elem x)  = x:acc
    rec acc (List (x:xs)) = rec (rec acc x) (List xs)
