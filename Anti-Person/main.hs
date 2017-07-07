x = 1::Int
id' x = x
sum' x y = x + y

isCold x = if x <= 0 then True else False
--isCold :: Num a => a -> Bool

vecSum x y = (fst x + fst y, snd x + snd y)
vecSum ::  Num a => (a, a) -> (a, a) -> (a, a)


length' [] = 0::Int
length' x = length' (tail x) + 1
--length'' (x:xs) = 

data Circle a = Circle { radius:: a} deriving Show
--squere :: Circle -> Float  
squere x  = radius x^2*pi

data AA =  A|G|C|T deriving (Show, Read)
pair:: AA -> AA
pair A = T
pair T = A
pair G = C
pair C = G

anti' :: [AA] -> [AA]
anti' [] = []
anti' x = (pair $ head x) : (anti $ tail x)

anti :: [AA] -> [AA]
anti x = map pair x


ch = do
        putStrLn "Make Anti-Person"
        x <- getLine
	let b = map (\y -> read [y]::AA) x
	return ()
--	putStr $ concat $ show $ anti b

