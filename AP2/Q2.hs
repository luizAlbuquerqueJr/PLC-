data Tree t = Nilt | Node t (Tree t) (Tree t)
    deriving (Eq)--necessário para printar

isBST :: (Ord t) => Tree t -> Bool -- o "(Ord t) =>" é pra poder comparar se é maior ou menor

isBST (Nilt) = True
isBST (Node chave filhoEsq filhoDir) | filhoEsq /= Nilt && (key filhoEsq) > chave = False
                                     | filhoDir /= Nilt && (key filhoDir) < chave = False
                                     | not(isBST filhoEsq) || not(isBST filhoDir) = False
                                     | otherwise = True

key :: (Ord t) => Tree t -> t
-- key (Nilt) = 0
key (Node chave filhoEsq filhoDir) =  chave