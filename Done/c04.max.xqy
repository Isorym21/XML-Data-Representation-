<taxRules>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@end = 'infinity'
return $x
(: display all data just for max salary :)
}
</taxRules>