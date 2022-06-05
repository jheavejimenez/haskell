{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module GradeBook (getGrade) where

getGrade :: Double -> Double -> Double -> Char
getGrade x y z
  | ave >= 90 = a
  | ave >= 80 = b
  | ave >= 70 = c
  | ave >= 60 = d
  | ave < 60 = f
  where ave =  (x + y + z) / 3
        a = 'A'
        b = 'B'
        c = 'C'
        d = 'D'
        f = 'F'