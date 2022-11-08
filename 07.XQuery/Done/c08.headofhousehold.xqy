<hh>

{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@code='HH'
return $x
}

(: display all rules who are head of house hold  :)
</hh>