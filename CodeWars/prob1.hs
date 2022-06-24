-- https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/haskell

evenOrOdd :: Integral a => a -> [Char]
evenOrOdd n = if even n then "Even" else "Odd"

-- Recursive solution

evenOrOddRecursive :: Integral a => a -> [Char]
evenOrOddRecursive 0 = "Even" -- base case
evenOrOddRecursive 1 = "Odd" -- base case
evenOrOddRecursive n = evenOrOddRecursive (n `mod` 2) -- recursive call

-- Gaurds solution
evenOrOddGaurd :: Integral a => a -> [Char]
evenOrOddGaurd n
    | even n = "Even"
    | otherwise = "Odd"
