(:

How many stocks are stocks.xml file?
:)



<result>

{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector!="sectors"]
return count($x)

}

</result>
