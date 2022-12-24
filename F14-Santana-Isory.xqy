

(:
What is the most expensive Utilities stock company?
Answer the question with the stock symbol. ANS: AWK

:)


<mostexpensive>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector="Utilities"]
order by $x/@num
return $x
}
</mostexpensive>