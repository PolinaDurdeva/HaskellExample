data Tree a = Empty | Node a (Tree a) (Tree a)
foldTree f ini Empty  = ini  
foldTree f ini (Node val l r) = foldTree f (foldTree f ini l `f` val) r
main = do
	let tree = (Node 1 (Node 1 (Node 3 Empty (Node 5 Empty Empty)) Empty) Empty)
	putStrLn "Tree: (Node 1 (Node 1 (Node 3 Empty (Node 5 Empty Empty)) Empty) Empty)"
	putStrLn "foldTree (+) 0 t"
	print(foldTree (+) 0 tree)
	putStrLn "foldTree (*) 1 t"
	print(foldTree (*) 1 tree)