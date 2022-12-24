


(:
What is the stock symbol with the lowest price? For example if the IBM - Internation Business Machine  has a price 5000.00. 
Then your answer is IBM. Note a variation of this quesion will used for 5 other question.

:)



<result>
{
for $x in doc("./data/stocks.xml")//stocks
order by $x/@price 
return $x 

}
</result>

