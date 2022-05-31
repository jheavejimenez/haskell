module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

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
