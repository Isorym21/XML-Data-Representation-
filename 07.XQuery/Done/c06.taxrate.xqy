<taxRules>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@taxRate > 20%
return $x

(: display all data just where the tax rate is greater than 20%  :)
}
</taxRules>

