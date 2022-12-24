<taxRules>


{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@year = '2021' and $x/@code = 'HH'
return $x

(: display all data from the year 2021 and has a status of HH :)
}
</taxRules>