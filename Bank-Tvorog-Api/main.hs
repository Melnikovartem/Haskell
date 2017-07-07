{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple

main :: IO ()
main = do
    x <- getLine
    let a = "https://goto.msk.ru/vault/api/get_balance/" ++ x
    x <- parseRequest a
    response <- httpLBS x
 
    L8.putStrLn $ getResponseBody response

wallet x = do
    let a = "https://goto.msk.ru/vault/api/get_balance/" ++ show x
    x <- parseRequest a
    response <- httpLBS x
    return $ getResponseBody response 

noy x = x /= "Not found"

f x = do
	let z = [1..x]
	--let y = map wallet x
	putStr $ show (maximum z)
--rich n = do
--    let x = [1..n]
    --let y = map wallet x
    --let y = filter noy y
--    putStr $ show (maximum x)
