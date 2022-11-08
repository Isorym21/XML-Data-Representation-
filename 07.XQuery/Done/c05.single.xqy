<single>

{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code='SM'
return $x

(: display all data just for single individual  :)
}
</single>