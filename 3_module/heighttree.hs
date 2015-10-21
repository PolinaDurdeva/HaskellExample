data Tree = Empty | Node Integer Tree Tree
height' Empty = 0
height'(Node _ l r ) = 1 + max (height' l) (height' r)
height (Node val l r ) = height'(Node val l r ) - 1 