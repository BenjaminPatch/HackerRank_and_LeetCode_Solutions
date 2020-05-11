f :: [Int] -> [Int]
f [] = []  -- These first two could patterns be combined to one, but for modularity/modifiability
f [_] = [] -- and readability, I left as is.
f (fst:snd:rest) = (snd:(f rest))

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
    inputdata <- getContents
    mapM_ (putStrLn. show). f. map read. lines $ inputdata

{-
-- My original implementation, before improving
fOrig :: [Int] -> [Int]
fOrig lst = everySecond 0 [] lst

everySecond :: Int -> [Int] -> [Int] -> [Int]
everySecond _ ls [] = ls
everySecond n ls orig = case n >= length orig of
    True -> ls
    False -> case n `mod` 2 of
        0 -> everySecond (n + 1) ls orig
        _ -> (everySecond (n + 1) (ls ++ [(orig !! n)]) orig)
-}
