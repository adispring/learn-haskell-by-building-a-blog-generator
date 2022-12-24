main = do
  contents <- getContents
  putStrLn (shortLinesOnly contents)

shortLinesOnly :: String -> String
shortLinesOnly input =
  let allLines = lines input
      shortLines = filter (\line -> length line < 10) allLines
      result = unlines shortLines
  in result
  