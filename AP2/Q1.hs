data Ops = SUM | SUB | MUL
    deriving (Eq)--necessário para printar
data IntTree = Nilt Int | Node Ops IntTree IntTree

evalTree :: IntTree -> Int
evalTree (Nilt t) = t
evalTree (Node operador left right)  | operador ==  SUM  = (evalTree left) + (evalTree right)
                                     | operador ==  SUB  = (evalTree left) - (evalTree right)
                                     | operador ==  MUL  = (evalTree left) * (evalTree right)
