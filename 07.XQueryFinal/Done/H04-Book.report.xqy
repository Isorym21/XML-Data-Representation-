declare variable $fileName := "./data/w3.books.xml";
declare variable $gData := doc($fileName)//book;
declare variable $price := $gData//price; 
declare variable $sumPrice := round(sum($price)*100) div 100;
declare variable $avg :=  round(avg($price)*100) div 100;
declare variable $max := max($price);
declare variable $lowest := min($price);
declare variable $space:= '&#32;' ; (: space :)

declare function local:gt($price as xs:decimal?,$d as xs:decimal?)
as xs:string?
{
    let $status := if ($price > $d)then("highlight") else ("")
    return $status
};
<html>
<head>

    <link rel="stylesheet" href= "style.css"> {$space} </link>

</head>
<body>

<h2>Santana, Isory</h2>

<table>
<thead>
  <tr>
    <th>Author</th>
    <th>Price</th>
    <th>Title</th>
  </tr>
  </thead>
    <tbody>
      {
        for $x in $gData
        order by data($x/title)
        return 

        <tr class= "{local:gt(data($x/price),30)}"> 
                <td>{data($x/author)}</td>
                <td class="money">{data($x/price)}</td>
                <td>{data($x/title)}</td> 
        </tr>

      }
    </tbody>
    <tfoot>
      <tr>
          <td> Total: </td>
          <td class= "money"> {$sumPrice}  </td>
          <td> </td>
      </tr>
      <tr>
          <td> Average: </td>
          <td class= "money"> {$avg}  </td>
          <td> </td>
      </tr>
      <tr>
          <td> Highest: </td>
          <td class= "money"> {$max}  </td>
          <td> </td>
      </tr>
      <tr>
          <td> Lowest: </td>
          <td class= "money"> {$lowest}  </td>
          <td> </td>
      </tr>
    </tfoot>
</table>
</body>
</html>