data List t = Nil | Cons t (List t) --  cons seria a cabeça da lista e List seria o resto da lista
    deriving (Show)--necessário para printar

data Tree t = NilT | Node t (Tree t) (Tree t)-- o NilT nesse caso refere-se a um elemento nulo
    deriving (Show)

--------------------------------------------------------------------------------
--toList (Cons 2 (Cons 3 (Cons 4 (Cons 5 (Nil)))))
toList :: List t -> [t]
toList Nil = []
toList (Cons t a) = [t] ++ toList a
--------------------------------------------------------------------------------
fromList :: [t] -> List t
fromList [] = Nil
fromList (a:as) = (Cons a (fromList as))
--------------------------------------------------------------------------------
--depth (Node 1 (Node 2 (Node 4 (NilT) (NilT)) (NilT)) (Node 3 (NilT) (NilT)))
depth :: Tree t -> Int -- altura da arvore
depth NilT = 0
depth (Node a left right) = 1 + (max (depth left) (depth right))
--------------------------------------------------------------------------------
collapse :: Tree t -> [t] -- transforma arvore em vetor
collapse NilT = []
collapse (Node a left right) = ([a] ++ collapse left) ++ collapse right
---------------------------------------------------------------------------------
mapTree :: (t -> u) -> Tree t -> Tree u
mapTree f NilT = NilT
mapTree f (Node a left right) = (Node (f a) (mapTree f left) (mapTree f right))
--------------------------------------------------------------------------------
soma5 :: Int -> Int
soma5 t = t + 5
--mapTree soma5 (Node 1 (Node 2 (Node 4 (NilT) (NilT)) (NilT)) (Node 3 (NilT) (NilT)))
--------------------------------------------------------------------------------

goEncode :: String -> Char -> Int -> String
goEncode ( a1:[]) caracter num      | a1 == caracter  = (show (num +1)) ++ [a1]
                                    | otherwise = (show num) ++ [caracter] ++ show(1) ++ [a1]
goEncode (a1:as) caracter num | a1 == caracter  = goEncode as a1 (num+1)
                                 | otherwise = (show num) ++ [caracter] ++ goEncode as a1 1
encode :: String -> String
encode (a1:as) = goEncode as a1 1

printCharNVezes :: Char->Int->String
printCharNVezes caracter num | num == 1 = [caracter]
                             | otherwise = [caracter] ++ printCharNVezes caracter (num -1)
decode :: String -> String
decode [] = []
decode (a1:a2:as) | a1 > '0' && a1 < '9' = printCharNVezes a2 (fromEnum a1 - fromEnum '0') ++ decode as
                  | otherwise = decode as
               

--Lembrar de usar a funçã read
