--polimorfismo : qnd um trecho de codigo serve para varios programas... Função generalizadas
--overloading: qnd uma palavra representa varias coisas. Exemplo: "a" + "b"  e 2 + 5 apesar

data Distancia = Km Float | Milhas Float    -- Distancia é o construtor e km ou milha é o tipo de data
    deriving(Show)

instance Eq Distancia where 
    (==) (Km x) (Km y) = (x==y)
    (==) (Milhas x) (Milhas y) = (x==y)
    (==) (Milhas x) (Km y) = (x*1.6==y)
    (==) (Km y) (Milhas x)  = (Milhas x) == (Km y)
-- Milhas 1 == Km 1.6

    
instance Ord Distancia where 
    (<=) (Km x) (Km y) = (x <= y)
    (<=) (Milhas x) (Milhas y) = (x <= y)
    (<=) (Milhas x) (Km y) = (x <= 1.6*y)
    (<=) (Km y) (Milhas x)  = (x <= 1.6*y)
    
    
--Falta terminar
data Set t = Conjunto [t]
    deriving(Show,Eq)

    instance Eq t => Eq (Conjunto t ) where 
        (==) (Conjunto x) (Conjunto y) =



--para testar: Set[1,1,2] == Set[1,2]