(:

How many Utilties company are in this list?
:)

<result>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector="Utilities"]
return <count>{count($x)}</count>
}
</result>
