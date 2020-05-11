len :: [a] -> Int
len = foldr' (\_ -> (+1)) 0

-- Decided to practice making my own right fold
foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f b [] = b
foldr' f b (x:xs) = f x (foldr' f b xs)


--Original: 
{-
len :: [a] -> Int
len lst = counter 0 lst

counter :: Int -> [a] -> Int
counter cnt [] = cnt
counter cnt (x:xs) = counter (cnt + 1) xs
-}
