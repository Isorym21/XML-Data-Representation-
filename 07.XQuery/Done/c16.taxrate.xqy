<taxRules>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@taxRate > .2 and $x/@year != 2019
return $x
}
(: display all data where the tax rate is greater than 20% and all years except
   for 2019
 :)
</taxRules>