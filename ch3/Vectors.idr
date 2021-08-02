import Data.Vect

fourInts: Vect 4 Int
fourInts = [1, 2, 2, 4]

sixInts: Vect 6 Int
sixInts = [1, 2, 3, 4, 5, 7]

tenInts: Vect 10 Int
tenInts = fourInts ++ sixInts
