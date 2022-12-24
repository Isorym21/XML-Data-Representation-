
(:
What is the least expensive Utilities stock company? 
Answer the question with the stock symbol. ANS: AES 

:)


<leastexpensive>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector="Utilities"]
order by $x/@num
return $x
}
</leastexpensive>