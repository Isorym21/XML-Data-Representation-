let $file := "./data/w3.books.xml"
for $x in doc($file)//book
where $x/price>30
order by $x/title
return $x/title
