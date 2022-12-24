<highIncome>
{
let $file := "./data/marginal_tax.xml"
for $x in doc($file)/rules/rule
where $x/@end > 300000 and $x/@end != 'infinity' and $x/@year = "2022" 
return $x

(: display all tax rules where the salary (end)  is greater than than 300,000 and from the year 2022  :)

}
</highIncome>