<hh>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code='HH' and $x/@year = 2021 
return $x
}
(: display all rules who are head of house hold 
   and year is 2021 :)
</hh>