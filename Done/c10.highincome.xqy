<highIncome>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@end > 300000  and $x/@end != 'infinity'
return $x
}
(: display all tax rules where the salary (end)  is greater than than 300,000  :)
</highIncome>