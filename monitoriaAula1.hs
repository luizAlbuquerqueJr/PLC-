addEsp :: Int->String
addEsp 0 = []
addEsp x = " " ++ addEsp (x-1)


addEspOnStr :: String -> Int -> String
--addEspOnStr x _  =  x
addEspOnStr [] _ = []
addEspOnStr (x:[]) _ = x:[]
addEspOnStr (x:xs) y  =  x:addEsp y ++ (addEspOnStr xs y)


type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]


baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
              ("Andre","Duna"),
              ("Fernando","Jonathan Strange & Mr.Norrell"),
              ("Fernando","Duna")]
-- livros emprestados



livros :: BancoDados -> Pessoa -> [Livro]
livros [] _ = []
livros ((xNome,xLivro):y) pessoa   | xNome == pessoa = (xLivro : livros y pessoa)
                                   | otherwise = livros y pessoa
emprestimos :: BancoDados -> Livro -> [Pessoa]
emprestimos [] _ = []
emprestimos ((xNome,xLivro):y) livro   | xLivro == livro = (xNome : emprestimos y livro)
                                       | otherwise = emprestimos y livro
                                       

emprestado ::BancoDados -> Livro -> Bool
emprestado [] _ = False
emprestado ((x,y):z) l | l == y = True
                       | otherwise = emprestado z l