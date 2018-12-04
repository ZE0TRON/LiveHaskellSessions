-- getLine, putStrLn, lists, ++,
-- zipWith, map, fold, tuples fst, snd,
-- zip, :t, :: -> -> ->, (h:t),(f:s:t:.....), show
-- head, tail, highOrderFunctions, functionReturningfunctions
-- (\x -> ), switch case ? , maybe,just,Nothing
a = 5

ll1 = [1,2,3,4,5]
ll2 = [6,7,8,1]
ll3 = ll1 ++ ll2

l1 = [1,3,4,5]
l2 =[2,3,4,5]
l3 = zipWith (*) l1 l2
l4 = map (**2) l1
l5 = takeWhile (<=20) [2,4..]
l6 = foldl (*) 1 [1,2,3,4,5]
l7 = [[x*y | y <- [1..10]] | x<- [1..10]]
t1 = ("Bilge Cimen",21)
name = fst t1
age = snd t1
names = ["Bilge","Emre","Guney","Tarik"]
ages = [21,20,20,21]
namesNages = zip names ages

summation :: Int -> Int -> Int
dotProduct :: [Int] -> [Int] -> [Int]
summation x y = x+y
dotProduct l1 l2 = zipWith (*) l1 l2
add x y =  x+y
add5 x = x+5
theBell grade grades numberOfGrades | grade < avg = "Fail"
                                    | otherwise = "Success"
                                    where avg = (foldl (+) 0 grades)/numberOfGrades

homeMadeZipWith op [] [] = []
homeMadeZipWith op l1 l2 = [op (head l1) (head l2)]++homeMadeZipWith (op) (tail l1) (tail l2)

homeMadeMap op [] = []
homeMadeMap op l1 = [op (head l1)]++homeMadeMap op (tail l1)

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x+y
adds3 = getAddFunc 3

v5 = 1 + (\x -> x*2) 2

doubleEvenNumber y =
    if(y `mod` 2 /= 0)
      then y
    else y*2

data Customer  = Customer String String Double
                deriving Show
tomSmith :: Customer
tomSmith = Customer "Tom Smith" "123 Main" 20.50

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

data Shape = Circle Float Float Float | Rectangle Float Float Float Float
      deriving Show

area :: Shape -> Float

area (Circle _ _ r) = pi * r^2
area (Rectangle x1 y1 x2 y2) = (abs (x1-x2)) *  (abs (y1-y2))
-- abs (x1-x2) = abs $ x1-x2
putSum = putStrLn (show (1+2))
putSum2 = putStrLn . show $ 1+2