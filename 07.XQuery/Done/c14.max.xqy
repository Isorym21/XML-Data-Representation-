<taxRules>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@year= 2022 and $x/@end = 'infinity'
return $x
}
(: display all data just for max salary for year 2022 :)
</taxRules>