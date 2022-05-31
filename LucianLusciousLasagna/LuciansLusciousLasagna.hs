module Main where

-- expectedMinutesInOven constant
expectedMinutesInOven :: Integer
expectedMinutesInOven = 40

-- preparationTimeInMinutes function
preparationTimeInMinutes :: Num a => a -> a
preparationTimeInMinutes numberOfLayers =
  numberOfLayers * 2


-- elapsedTimeInMinutes function
elapsedTimeInMinutes :: Num a => a -> a -> a
elapsedTimeInMinutes numberOfLayers numberOfMinutesInOven =
  preparationTimeInMinutes numberOfLayers+ numberOfMinutesInOven

main :: IO ()
main = do
  putStrLn "Enter number of layers:"
  numberOfLayers <- getLine
  putStrLn "Enter number of minutes in oven:"
  numberOfMinutesInOven <- getLine
  let numberOfLayers' = read numberOfLayers :: Integer
  let numberOfMinutesInOven' = read numberOfMinutesInOven :: Integer
  let result = elapsedTimeInMinutes numberOfLayers' numberOfMinutesInOven'
  putStrLn $ "Elapsed time in minutes: " ++ show result
  putStrLn $ "Expected time in minutes: " ++ show expectedMinutesInOven
  if result > expectedMinutesInOven
    then putStrLn "Too long"
    else putStrLn "Too short"