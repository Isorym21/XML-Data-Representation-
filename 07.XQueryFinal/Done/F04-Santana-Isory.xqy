(:

What is the average price  for  Utilities stock company? 
Display the answer with decimal points, example 413.234  can be written as 413.23.
:)


<result>


{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector="Utilities"]
order by $x/@num
return $x
}

</result>



