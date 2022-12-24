(:
How many stocks cost more than the average stock price?
   Step 1 get the average price of the stock?
   Setp 2 use that number to create a query that will count the number of stock greater than the average.

:)
<result>
{
let $file := "./data/stocks.xml"
let $x := doc($file)//stock[@sector="stocks"]
let $avg := avg($stocks)
return <count>{count($x)}</count>
      <avg>{$avg}</avg> 
}
  
   </result>