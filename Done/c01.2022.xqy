let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@year = 2022
return $x
