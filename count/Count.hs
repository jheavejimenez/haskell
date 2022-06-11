module Kata where
import Data.List ( transpose )
-- Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers. 0 is neither positive nor negative.
--If the input is an empty array or is null, return an empty array.


countPositivesSumNegatives :: Maybe [Int] -> [Int]
countPositivesSumNegatives Nothing = []
countPositivesSumNegatives (Just input) = map sum . transpose $ [if xs > 0 then [1, 0] else [0, xs] | xs <- input]