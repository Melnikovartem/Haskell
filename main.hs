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

