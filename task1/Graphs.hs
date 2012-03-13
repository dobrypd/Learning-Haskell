module Graphs (graphFromStringList, listOfConnectedVertices) where
import MyArray
--Graph to tabela (bool (czy odwiedzony), [Int] lista sasiadow)

data Graph = Array Int (Bool, [Int])

listOfConnectedVertices :: (Array Int (Bool, [Int])) -> Int -> [Int]
listOfConnectedVertices g s = gsearch g [s] where
    gsearch :: (Array Int (Bool, [Int])) -> [Int] -> [Int]
    gsearch _ [] = []
    gsearch g (h:t)
        | fst (g!h) = (gsearch g t)
        | otherwise = h:(gsearch (g//[(h, (True, (snd(g!h))))]) ((snd(g!h))++t))

makeVertex :: [Int] -> (Int, (Bool, [Int]))
makeVertex [] = error "Parse error"
makeVertex (h:t) = (h, (False, t))

makeVertices :: [String] -> [(Int, (Bool, [Int]))]
makeVertices [] = []
makeVertices (h:t) = (makeVertex (map read (words h))) : (makeVertices t)

graphFromStringList :: [String] -> (Array Int (Bool, [Int]))
graphFromStringList x = array (1, (length x)) (makeVertices x)
    
