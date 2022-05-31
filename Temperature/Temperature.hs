module Main where

thirtyTwo :: Integer
thirtyTwo = 32

onePointEight :: Float
onePointEight = 1.8

{- Implement the function `tempToC` to convert
`  Fahrenheit to Celsius                    -}

tempToC :: Integer -> Float
tempToC temp = fromIntegral (temp - thirtyTwo) / onePointEight


{- Implement the function `tempToF` to convert
`  Celsius to Fahrenheit                    -}

tempToF :: Float -> Integer
tempToF temp = ceiling (temp * onePointEight + fromIntegral thirtyTwo)

main :: IO ()
main = do
  putStrLn "Enter a temperature in Fahrenheit:"
  temp <- getLine
  let tempF = read temp :: Integer
  let tempC = tempToC tempF
  putStrLn ("The temperature in Celsius is " ++ show tempC)
  putStrLn ("The temperature in Fahrenheit is " ++ show (tempToF tempC))
