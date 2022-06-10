module Kata where

-- Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers. 0 is neither positive nor negative.

--If the input is an empty array or is null, return an empty array.

countPositivesSumNegatives :: Maybe [Int] -> [Int]
countPositivesSumNegatives xs = [length [x | x <- xs, if x > 0], sum [x | x <- xs, if x < 0]]