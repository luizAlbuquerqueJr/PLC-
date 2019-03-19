vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 20
vendas 2 = 30
vendas 3 = 40
vendas n = 50


isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f 0 = True 
isCrescent f n = f n > f (n-1) && isCrescent f (n-1)


sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as


myFold :: (t -> t -> t) -> [t] -> t
myFold f [a]= a
myFold f (a:as) = f a (myFold f as)
-- sumList l = myFold (+) l

-- explicação do foldr
-- [1,2,3]
-- 1 - foldr(2,3)
-- 1 - ( 2 - 3)
-- 1 - (-1)
-- 2

-- -- explicação do foldl
-- 1,2,3
-- -3 - (2 - 1)