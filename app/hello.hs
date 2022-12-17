main = putStrLn myHtml

myHtml = makeHtml "My page title" "My page content"

head_ content = "<head>" <> content <> "</head>"

title_ content = "<title>" <> content <> "</title>"

makeHtml title content = html_ (head_ (title_ title) <> body_ content)

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"