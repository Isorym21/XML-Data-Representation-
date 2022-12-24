
(:
What is the highest price paid for stock?  
Use price attribute to calculate the maximum value.

:)


<result>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stocks[price=max(//price)]
order by $x/@num
return $x
}

</result>










