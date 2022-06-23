  module Codewars.Strings where


  doubleChar :: [Char] -> [Char]
  doubleChar = concat . map (replicate 2)