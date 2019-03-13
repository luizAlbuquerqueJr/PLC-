addEsp :: Int->String
addEsp 0 = []
addEsp x = " " ++ addEsp (x-1)


addEspOnStr :: String -> Int -> String
--addEspOnStr x _  =  x
addEspOnStr [] _ = []
addEspOnStr (x:[]) _ = x:[]
addEspOnStr (x:xs) y  =  x:addEsp y ++ (addEspOnStr xs y)


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
devolver ((xNome,xLivro):y) pessoa livro  | xNome == pessoa && xLivro == livro = devolver y pessoa livro
                                   | otherwise = [(xNome,xLivro)] ++ devolver y pessoa livro

-- -- Consultas
--exibi todos os livros que determinada pessoa pegou
livros :: BancoDados -> Pessoa -> [Livro]
livros [] _ = []
livros ((xNome,xLivro):y) pessoa   | xNome == pessoa = (xLivro : livros y pessoa)
                                   | otherwise = livros y pessoa
--exibi todos as pessoas que pegou determinado livro
emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos [] _ = []
emprestimos ((xNome,xLivro):y) livro   | xLivro == livro = (xNome : emprestimos y livro)
                                       | otherwise = emprestimos y livro                                       
emprestado ::BancoDados -> Livro -> Bool
emprestado [] _ = False
emprestado ((x,y):z) l | l == y = True
                       | otherwise = emprestado z l
qtdEmprestimos :: BancoDados -> Pessoa -> Int
qtdEmprestimos [] _= 0
qtdEmprestimos ((xNome,xLivro):y) pessoa   | xNome == pessoa = (1 +  qtdEmprestimos y pessoa)
                                           | otherwise = qtdEmprestimos y pessoa        

----------------------------------------------------------------------------------------                       