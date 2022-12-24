<lowincome>

{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@end < 12000 and $x/@end != 'infinity'
return $x
}
(: display all tax rules where the salary (end)  is less than 12000   :)
</lowincome>