<married>

{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code='MFJ'
return $x
}
(: display all married filing jointly people  :)
</married>