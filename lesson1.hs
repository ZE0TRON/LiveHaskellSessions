import System.IO
a=5.0
b = 3+5
d y = y*2
c x = (d x) + 5

homeMadeReverse [] = []
homeMadeReverse lis = homeMadeReverse (tail lis) ++ [head lis]

homeMadeMap f [] = []
homeMadeMap f (h:t) = [f h] ++ homeMadeMap f (t)

alwaysTrue x = 1==1

funcForComph :: Int -> Int
funcForComph x = (x+10) *2
multWithX :: Int -> [Int] -> [Int]
multWithX x [] = []
multWithX x lis = [(head lis)*x] ++ multWithX x (tail lis)
l1 = [1,2,3,4,5]
l2 = 0 : l1
l3 = l1 ++ [0]
l4 = [2,3,4,5,6]
l5 = l1 ++ l4
l6 = "Bilge"
l7 = "Cimen"
s1 = l6++l7
t1 = (10,"Bilge")
f1 =fst t1
f2 = snd t1
r1 = reverse l1
h1 = head l1
h2 = tail l1

m6 = map (^2) l4
m1 = filter (\ x -> x `mod` 2 ==0 ) l4
lc1 =  take 30 [funcForComph x | x <- [1,3..], x `mod` 3 == 0]
z1 = zipWith (*) l1 l4

z2=  foldl (+) 0  l1

getAddFunc x y = y+x
adds3 = getAddFunc 3


doubleSuchThatEven x | x `mod` 2 ==0 = x*2
                     | x `mod` 3==0 =  x*3
                     | otherwise = x

doubleIfEven x = if (x `mod` 2 ==0)
                 then x*2
                 else x

doubleIfSumLessThanS x y s | sum < s = sum*2
                           | otherwise = sum
                           where sum = x+y
main :: IO()
main = do
    age <- readLn :: IO Int
    putStrLn (show (adds3 age))