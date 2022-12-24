<bookList>
{
let $file := "./data/w3.books.xml"
for $x in doc($file)//book
order by $x

let $price := data($x/price)
let $year := data($x/year)
return <name price="{$price}" year="{$year}">{data($x/title)}</name>
}
</bookList>