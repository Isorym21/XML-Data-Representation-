(:

What  is the average dividend payment, remove all the stocks that pay 0 dividends ?
:)


<result>

{
let $file := "./data/stocks.xml"
let $x := doc($file)//stocks
order by $x/@num
return $x
}

</result>