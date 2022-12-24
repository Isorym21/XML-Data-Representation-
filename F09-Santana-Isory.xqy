(:

How many Utilties company are in this list and have a price greater than 100.00 ?
:)


<result>
{
let $file := "./data/stocks.xml"
for $x in doc($file)//stock[@sector="Utilities"]
where $x/@price > 100.00
return $x
}
</result>



