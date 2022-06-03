-- The function should take three arguments - operation(string/char), value1(number), value2(number).
-- The function should return result of numbers after applying the chosen operation.

-- Examples(Operator, value1, value2) --> output
{--
    ('+', 4, 7) --> 11
    ('-', 15, 18) --> -3
    ('*', 5, 5) --> 25
    ('/', 49, 7) --> 7 
--}

module BasicMathematicalOperations (basicOp) where

basicOp :: Char -> Int -> Int -> Int
basicOp operation numOne numTwo
  | operation == '+' = numOne + numTwo
  | operation == '-' = numOne - numTwo
  | operation == '*' = numOne * numTwo
  | otherwise = numOne `div` numTwo

-- other solution
{--
    module BasicMathematicalOperations (basicOp) where

    basicOp :: Char -> (Int -> Int -> Int) -- You can skip the two numbers because of currying
    basicOp x
      | x == '+' = (+)
      | x == '-' = (-)
      | x == '*' = (*)
      | x == '/' = div
--}
