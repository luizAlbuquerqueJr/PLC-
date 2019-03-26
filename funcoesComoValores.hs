
--funções de alta ordem
-- f(f())
twice :: (t -> t) -> (t -> t)
twice f = f . f

--f^n()
iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f).f

double:: Int -> Int
double x = 2*x


--iter 10 double 3 == Funciona
--iter 10 ((*) 2) 3 == Funciona
--iter 10 (2 (*)) 3 == Nao funciona
--iter 10 (2 *) 3 == Funciona
--iter 10 (* 2) 3  == Funciona

--iter 10 (/ 2) 2000 == Funciona = 1.953125
    --2000/2
    --(2000/2)/2

--iter 10 ((/) 2) 2000  == Funciona = 2000
    --2/2000 
    --2/ (2/2000)



