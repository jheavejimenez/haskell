{--
Write a function called repeatStr which repeats the given string string exactly n times.

repeatStr(6, "I") // "IIIIII"
repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

--}
module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n = concat . replicate n