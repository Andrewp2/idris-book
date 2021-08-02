module Main

import Average

showAverage : String -> String
showAverage str = "The average word length is: " ++
		  show (average str) ++ "\n"

main : IO ()
main = repl "Enter a string:  " showAverage

palindrome : String -> Bool
palindrome str =
	if length str > 10
		then toLower str == reverse (toLower str)
		else False


invert : Bool -> Bool
invert False = True
invert True = False
