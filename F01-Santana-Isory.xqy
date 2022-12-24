(:

What is the stock symbol with the 1rd hightest price?
For example if the IBM - Internation Business Machine has a price 5000.00. Then your answer is IBM.
Note a variation of this quesion will used for 5 other question.

NVR
:)


<result>
{
for $x in doc("./data/stocks.xml")//stocks
order by $x/@price 
return $x 

}
</result>



