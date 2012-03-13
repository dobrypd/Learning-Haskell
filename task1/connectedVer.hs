--Program:
--connected vertices to vertex no 1
--
--Task 1 JIPP
--
--Author: Piotr Dobrowolski (291528)

import MyArray
import Graphs

connectedTo1 :: [String] -> String

connectedTo1 input
    | null input = error "No graph loaded. You should load at least first vertex"
    | otherwise = print $ listOfConnectedVertices (graphFromStringList input) 1


main = interact $ connectedTo1 . lines
