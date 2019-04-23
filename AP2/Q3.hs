data List t = Nil | Cons t (List t) --  cons seria a cabeça da lista e List seria o resto da lista
    deriving (Show)--necessário para printar

mapList :: (t -> t) -> List t -> List t 
mapList f  Nil = Nil
mapList f  (Cons t restoLista) = Cons(f t) (mapList f restoLista)

-- mapTree :: (t -> u) -> Tree t -> Tree u
-- mapTree f NilT = NilT
-- mapTree f (Node a left right) = (Node (f a) (mapTree f left) (mapTree f right))


-- mapTree f NilT = NilT
-- mapTree f (Node a left right) = (Node (f a) (mapTree f left) (mapTree f right))