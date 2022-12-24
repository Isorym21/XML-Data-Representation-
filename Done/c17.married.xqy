<married>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code='MFJ' and $x/@end > 100000 and $x/@end != 'infinity'
return $x
}
(: display all rules where married filing jointly, and end salary is greater
   than 100,000  :)
</married>