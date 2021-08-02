module Average

export
average : String -> Double
average str = let numWords = wordCount str 
                  totalLength = sum (allLengths (words str)) in 
			      cast totalLength / cast numWords
	where
		wordCount: String -> Nat
		wordCount str = length (words str)

		allLengths : List String -> List Nat
		allLengths strs = map length strs

add : Int -> Int -> Int
add x y = x + y

identity: ty -> ty
identity x = x

double: Num ty => ty -> ty
double x = x + x

twice : (a -> a) -> a -> a
twice f x = f (f x)

Shape : Type
rotate : Shape -> Shape

quadruple : Num a => a -> a
quadruple = twice double

turn_around : Shape -> Shape
turn_around = twice rotate


longer : String -> String -> String
longer word1 word2
	= let len1 = length word1
	      len2 = length word2 in
              if len1 > len2 then word1 else word2

pythagoras : Double -> Double -> Double
pythagoras x y = sqrt (square x + square y)
  where
    square: Double -> Double
    square x = x * x

wordCount : String -> Nat
wordCount str = length (words str)

allLengths : List String -> List Nat
allLengths strs = map length strs

-- single line comment

{- 
Multiple
Line
Comment
-}

