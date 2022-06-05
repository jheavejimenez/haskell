module GradeBook (getGrade) where
import Data.Char

getGrade :: Double -> Double -> Double -> Char
getGrade x y z = chr $ ceiling (10 - score / 10 + magicNum)
    where score = min 99 $ max ((x + y + z) / 3) 50
          magicNum = if score > 60 then 64 else 65
          