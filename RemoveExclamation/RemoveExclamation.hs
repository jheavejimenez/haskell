-- Write function RemoveExclamationMarks which removes all exclamation marks from a given string.

-- Example
{--
    removeExclamationMarks "Hello World!" `shouldBe` "Hello World"
--}

module RemoveExclamationMarks where

removeExclamationMarks :: String -> String
removeExclamationMarks str = [ x | x <- str, x `notElem` "'!'" ]
