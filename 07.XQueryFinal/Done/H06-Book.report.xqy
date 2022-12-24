declare variable $fileName := "./data/w3.books.xml";
declare variable $gData := doc($fileName)//book[price>20];
declare variable $price := $gData//price; 
declare variable $sumPrice := round(sum($price)*100) div 100;
declare variable $avg :=  round(avg($price)*100) div 100;
declare variable $max := max($price);
declare variable $lowest := min($price);
declare variable $space:= '&#32;' ; (: space :)


declare function local:getCategory($input as element()?)
as xs:string?

{
    let $status := exists ($input/@category)
    let $results := if ($status) then  ($input/@category) else  ($input/genre)
    
    return data ($results)
};

<html>
<head>

    <link rel="stylesheet" href= "style.css"> {$space} </link>

</head>
<body>


   <h2> Author: Santana, Isory (Expensive Books) </h2>

<table>
<thead>
  <tr>
    <th>Author</th>
    <th>Price</th>
    <th>Title</th>
    <th>Category</th>

  </tr>
  </thead>
    <tbody>
      {
        for $x in $gData
        order by data($x/title)
        return 

        <tr> 
                <td>{data($x/author)}</td>
                <td class="money">{data($x/price)}</td>
                <td>{data($x/title)}</td> 
                <td>{local:getCategory($x)}</td> 
        </tr>

      }
    </tbody>
    <tfoot>
      <tr>
          <td> Total: </td>
          <td class= "money"> {$sumPrice}  </td>
          <td colspan="2"> </td>
      </tr>
      <tr>
          <td> Average: </td>
          <td class= "money"> {$avg}  </td>
          <td colspan="2"> </td>
      </tr>
      <tr>
          <td> Highest: </td>
          <td class= "money"> {$max}  </td>
          <td colspan="2"> </td>
      </tr>
      <tr>
          <td> Lowest: </td>
          <td class= "money"> {$lowest}  </td>
          <td colspan="2"> </td>
      </tr>
    </tfoot>
</table>
</body>
</html>