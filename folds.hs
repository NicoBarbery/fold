{-borra : elimina todas las ocurrecias de un elemento dentro de una lista
borra 5 [2,3,5,6]
Resultado: [2,3,6]
borra 5 [2,3,5,6,5]
Resultado:  [2,3,6]
borra 7 [2,3,5,6,5]
Resultado: [2,3,5,6,5]
-}

borrar Eq a => a -> [a] -[a]
borrar x xs = foldr f [] xs
              where
							     f x r | x == n =  r
                         | otherwise = x:r


{-
diferencia : Realiza la diferencia de conjuntos representqdos por dos listas
diferencia [2,3,5,6] [5,2,7]
Resultado: [3,6]
-}

dif :: Eq a => [a] -> [a] -> [a]
dif xs ys = foldr g [] xs
            where
						     g x r | elem x ys = r
                       | otherwise = x:r
{-
pertenece: Verifica si un elemento pertenece o no a una lista
pertenece [3,5,1,7] 2
Resultado: False
pertenece [3,5,1,7] 7
Resultado: True
-}

pertenece :: Eq a => [a] -> a -> Bool
pertenece xs n = foldr k False xs
                 where
								      k x r = x == n ||  r

{-
Definir la funcion Prefijos usando foldr
prefijos [1,2,3]
Resultado: [[],[1],[1,2],[1,2,3]]
-}

prefijos :: [a] -> [[a]]
prefijos xs = foldr h [[]] xs
              where
							     h x r = [] : map (x:) r

{-
Qu'e calculan las siguientes funciones

f1 :: [Bool] -> Bool
f1 = foldr (&&) True

funcion and
f2 :: [a] -> [a]
f2 = foldr (:) []

devuelve la misma lista id para listas
f3 :: [a] -> [a] -> [a]
f3 xs ys = foldr (:) ys xs

(++)

f4 :: [a] -> [a]
f4 = foldl (flip (:)) []

reverse de la listaa

f5 :: [a] -> a
f5 = foldr1 max

maximo de la lista
-}


-}


Dadas las siguientes definiciones:

prefijo xs = foldr f [[]] xs
f x xs = [] : (map (x:) xs)

prefijo' xs = foldl f' [[]] xs
f' xs x = [] : (map (x:) xs)

Indique los pasos de evaluacion de las siguientes expresiones:

prefijo [1,2,3,4]
[[],[1],[1,2],[1,2,3],[1,2,3,4]]

prefijo' [1,2,3,4]
[[],[4],[4,3],[4,3,2],[4,3,2,1]]
