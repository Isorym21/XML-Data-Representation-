let $file := "./data/w3.books.xml"
for $x in doc($file)/bookstore/book
where $x/price>30
return $x/title