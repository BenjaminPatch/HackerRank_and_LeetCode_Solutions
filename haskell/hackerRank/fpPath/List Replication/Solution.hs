-- map the function `replicate n` to everything in the map,
-- then call concat to make [[a]] become [a]
f :: Int -> [Int] -> [Int]
f n = concat . fmap (replicate n)

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words

