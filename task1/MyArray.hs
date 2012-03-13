--MyArray
--
--Task 1 JIPP
--
--Author: Piotr Dobrowolski (291528)

module MyArray where

-- Indices class
class Ord a => Ix a where
    range :: (a, a) -> [a]
    index :: (a, a) -> a -> Int
    invIndex :: (a, a) -> Int -> a
    inRange :: (a, a) -> a -> Bool
    nextIndex :: (a, a) -> a -> a
    nextIndex ix x =
        invIndex ix ((index ix x) + 1)
    prevIndex :: (a, a) -> a -> a
    prevIndex ix x =
        invIndex ix ((index ix x) - 1)
    rangeSize :: (a, a) -> Int
    rangeSize (l, r)
        | null $ range (l, r) = 0
        | otherwise = (+1) $ index (l, r) r

-- Instances of Ix
instance Ix Char where
    range (l, r) = [l..r]
    index (l, r) x
        | inRange (l, r) x = fromEnum x - fromEnum l
        | otherwise = error "Index out of range."
    invIndex (l, r) i = let 
        chr :: Int -> Char
        chr = toEnum
        in
            chr ((fromEnum l) + i)
    inRange (l, r) x = x>=l && x<=r
instance Ix Int where
    range (l, r) = [l..r]
    index (l, r) x
        | inRange (l, r) x = x - l
        | otherwise = error "Index out of range."
    invIndex (l, r) i = l+i
    inRange (l, r) x = x>=l && x<=r
instance Ix Integer where
    range (l, r) = [l..r]
    index (l, r) x
        | inRange (l, r) x = fromInteger (x - l)
        | otherwise = error "Index out of range."
    invIndex (l, r) i 
        | rangeSize (l, r) < i = error "Invalid inverted index"
        | otherwise = toInteger $ (fromInteger l) + i
    inRange (l, r) x = x>=l && x<=r
instance (Ix a, Ix b) => Ix (a, b) where
    range ((l, r), (l', r')) = 
        [(x, x') | x <- range(l, l'), x' <- range(r, r')]
    index ((l, r), (l', r')) (x, x') =
        index (l, l') x * rangeSize (r, r') + index (r, r') x'
    invIndex ((l, r), (l', r')) i
        | l' < l = error "Invalid inverted index."
        | rangeSize(r, r') > i = (l, invIndex (r, r') i)
        | otherwise = invIndex (((invIndex (l, l') 1) , r), (l', r')) (i - rangeSize(r, r'))
    inRange ((l, r), (l', r')) (x, x') =
        inRange (l, l') x && inRange (r, r') x'


-- Array implementation
data Array i e = Empty | Node i e (Array i e) (Array i e)

-- interface
makeEmptyArray :: Ix i => (i, i) -> Array i e
listArray :: (Ix i) => (i, i) -> [e] -> Array i e
(!)       :: Ix i => Array i e -> i -> e
elems     :: Ix i => Array i e -> [e]
changeElem:: Ix i => Array i e -> (i, e) -> Array i e
array     :: (Ix i) => (i, i) -> [(i,e)] -> Array i e
(//)      :: (Ix i ) => Array i e -> [(i,e)] -> Array i e

middle :: Int -> Int -> Int
middle a b = (a + b) `div` 2

makeEmptyArray ix = mEmpty ix ix where
    mEmpty :: (Ix i) => (i, i) -> (i, i) -> Array i e
    mEmpty (l, r) ix
        | rangeSize (l, r) == 0 = Empty
        | otherwise = 
            let m = middle (index ix l) (index ix r) in
                let ixM = invIndex ix m in
                    Node ixM undefined (mEmpty (l, prevIndex ix ixM) ix) (mEmpty (nextIndex ix ixM, r) ix)
        
listArray (l, r) xs
    | rangeSize (l, r) == 0 = Empty
    | null xs = makeEmptyArray (l, r)
    | otherwise = (makeEmptyArray (l, r)) // (zip (range (l, r)) xs)

(!) Empty _ = error "Index out of range"
(!) (Node i e l r)  x
    | x == i = e
    | x > i = r!x
    | otherwise = l!x

elems Empty = []
elems (Node i e l r) = elems l ++ [e] ++ elems r

array (l, r) xs = makeEmptyArray (l, r) // xs

changeElem Empty _ = error "Index out of range"
changeElem (Node i e l r) (hi, he)
    | hi == i = Node i he l r
    | hi > i = Node i e l (changeElem r (hi, he))
    | otherwise = Node i e (changeElem l (hi, he)) r

(//) a [] = a
(//) a (h:t) = changeElem a h // t
