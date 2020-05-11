import Prelude hiding (filter) -- Made my own filter

f :: Int -> [Int] -> [Int]
f n arr = filter (< n) arr

filter :: (Int -> Bool) -> [Int] -> [Int]
filter _ [] = []
filter f (x:xs) = case f x of
    True -> (:) x (filter f xs)
    False -> filter f xs

fAlternate :: Int -> [Int] -> [Int]
fAlternate n arr = [x | x <- arr, x < n]

-- The Input/Output section. You do not need to change or modify this part
main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers

