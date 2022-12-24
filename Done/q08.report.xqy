<bookList>
{
let $file := "./data/w3.books.xml"
for $x in doc($file)//book/title
order by $x
return <name>{data($x)}</name>
}
</bookList>