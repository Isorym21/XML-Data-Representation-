<single>{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code = "SM" and $x/@year = 2022
return $x
}

(: display all data just for single individual and applies to year 2022  :)
</single>