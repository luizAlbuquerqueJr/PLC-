aplicarDireita :: (Integer -> Integer -> Integer) ->Integer ->[Integer] -> Integer
aplicarDireita f a [] = a
aplicarDireita f a (b:bs) = f b (aplicarDireita f a bs)