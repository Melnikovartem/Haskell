data AA =  A|G|C|T deriving (Show, Read)
pair:: AA -> AA
pair A = T
pair T = A
pair G = C
pair C = G

anti :: [AA] -> [AA]
anti x = map pair x

main = do
        putStrLn "Make Anti-Person"
        x <- getLine
        let b = map (\y -> read [y]::AA) x
        putStr $ (concat $ map show (anti b)) ++ "\n"

