(:

What stock symbol pays the highest dividends?

:)


<result>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stocks[price=max("dividends")]
order by $x/@num
return $x
}

</result>