import System.IO
import Data.Char

main = do
  contents <- readFile "girlfriend.txt"
  appendFile "girlfriend.txt" (map toUpper contents)