<taxRules>
{
    let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@year = 2019
return $x

}
(: display all data from the year 2019 :)
</taxRules>