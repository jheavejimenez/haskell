module StringRepeat where

repeatStr :: Int -> String -> String
repeatStr n = concat . replicate n