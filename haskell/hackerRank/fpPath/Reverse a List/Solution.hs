-- Reverse the given list
-- foldl on (:) will grab the empty list, and the first elem in list,
-- and apply (:) to [] then elem, this is invalid and thus cons needs to be flipped
rev l = foldl (flip (:)) [] l

temp :: [a] -> [a] -> [a]
temp x [] = x
temp [] (x:xs) = temp [x] xs
temp new (c:d) = temp (c:new) d

{- Original, not as "haskelthonic"
rev :: [a] -> [a]
rev l = temp [] l
-}
