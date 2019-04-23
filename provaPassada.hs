
-- 1 º
locate :: Eq t => t -> [t] -> Int
locate num a = locateAux num a 0

-- num lista count
locateAux ::  Eq t => t -> [t] -> Int -> Int
locateAux num [] count = -1
locateAux num (a:as) count | num == a = count
                           | otherwise = locateAux num as (count+1)

-- 2º 
substr :: String -> String -> Bool
substr [] _ = True 
substr _ [] = False
substr (a:as) (b:bs)
    | a==b = (as) == (take(length(as))bs) || substr (a:as) bs
    | otherwise = substr (a:as) bs


--     1) (2.5) Escreva uma função que verifica se uma lista já está ordenada, 
--    do menor para o maior elemento..
--    exemplo:    ------> True
--             isSorted [1,6,8,7,9] ------> False
--    Dica: verifique se sua resposta funciona para listas de tamanho ímpar.

isSorted :: Ord t => [t] -> Bool
isSorted [] = True
isSorted (a:as) = isSortedAux a as 

isSortedAux  :: Ord t => t -> [t] -> Bool
isSortedAux value (a:[])  = value <= a
isSortedAux value (a:b:[]) 
    | value <= a  = a<=b
    | otherwise = False
isSortedAux value (a:b:as) 
    | value <= a  = isSortedAux b as
    | otherwise = False

-- 2) (2.5) O método de ordenação bubble-sort funciona da seguinte forma: 
--    cada elemento da lista de entrada é comparado com o seguinte, 
--    e se eles não estiverem em ordem (do menor para o maior) sua posição na lista resultante é trocada,
--    e a comparação continua com a nova ordem.Esse processo é repetido até que a lista esteja ordenada 
--    (nenhuma troca seja mais necessária).
--    exemplo, passo a passo: 
--        bSort [4,8,3,6,1,8] ----> compara 4 e 8, 8 e 3 (troca, pois 8 > 3), 8 e 6(troca novamente), 8 e 1 (troca novamente) e 8 e 8  
--                                    ----> [4,3,6,1,8,8]
--        repetindo o processo, temos  ---> [3,4,1,6,8,8] ---> [3,1,4,6,8,8]  ---> [1,3,4,6,8,8]
-- Implemente a função bSort.
-- Dica 1: use funções auxiliares, que façam parte do processo;
-- Dica 2: verifique que sua solução funciona para listas de tamanho ímpar.

bSort :: Ord t => [t] -> [t]
