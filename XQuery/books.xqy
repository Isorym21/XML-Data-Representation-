for $x in doc("./data/books.xml")/books/book
where $x/@category = "XML" 
return $x



