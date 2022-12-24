<taxRules>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@year= 2019 and $x/@end > 100000 and $x/@end != 'infinity'
return $x
}
(: display all data from the year 2019 and the end salary is greater than
   100,000 :)
</taxRules>