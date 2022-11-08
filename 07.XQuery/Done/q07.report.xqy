<bookList>
{
let $file := "./data/w3.books.xml"
for $x in doc($file)/bookstore/book/title
order by $x
return <li>{data($x)}</li>
}
</bookList>