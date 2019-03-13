sumList :: [Int] -> Int --[Int] é uma lista

--caso base
sumList [] = 0 --lista vazia
sumList (a:as) = a + sumList as --(a:b) a é cabeça e b a "cauda" que é uma lista que contém os outros elementos da lista

double :: [Int] -> [Int]

double [] = []
double (x:y) = (2*x : double(y))

member :: [Int] -> Int -> Bool

member [] x = False
member (w:z) x = (w == x) || (member z x)  -- modo 1 mais demorado, pois vê todos os elementos

--modo 2 mais rápido, pois se estiver na cabeça da lista já retorna
-- member (w:z) x | x == a = True
--                | otherwise = member z x


digits :: String -> String

digits [] = []
digits (x:y) | x >= '0' && x <= '9' = (x : digits y)
             | otherwise  = digits y


sumPairs :: [(Int, Int)] -> [Int]

sumPairs [] = []
sumPairs ((x,y):xys) = (x + y) : sumPairs xys 






doubleListIfEven :: [Int] -> [Int]
doubleListIfEven xs = [2*a|a <- xs, even a]


----------------------------Banco de dados----------------------------------------------------------------------
type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa, Livro)]

baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
               ("Andre","Duna"),
               ("Fernando","Jonathan Strange & Mr.Norrell"),
               ("Fernando","Duna")]
-- -- Atualizações 
-- Inserir uma pessoa e livro no banco de dados
emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados
emprestar bd ps li = (ps, li):bd
-- Remover uma pessoa e livro no banco de dados
devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver [] _ _ = []
devolver bd ps lv = [(pessoa, livro)| (pessoa, livro) <- bd, (pessoa, livro) /= (ps, lv)]

-- -- Consultas
--exibi todos os livros que determinada pessoa pegou
livros :: BancoDados -> Pessoa -> [Livro]
livros [] _ = []
livros bd ps = [livro | (pessoa, livro) <- bd, pessoa == ps]
--exibi todos as pessoas que pegou determinado livro                      
emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos [] _ = []
emprestimos bd lv = [pessoa | (pessoa, livro) <- bd, livro == lv]

-------------------------------------------------------------------------------------------------------------------------------------------------------------

-- algoritmo QuickSort
qsort :: [Int] -> [Int]
qsort [] = []
qsort (a:as) = qsort[x | x <- as, x <= a] ++ [a] ++ qsort[y| y <- as, y >= a] 
--[x | x <- as, x <= a] retornará um vetor de elemento x tal que x vem do vetor as e x <=as