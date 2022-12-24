
declare variable $fileName :="./data/w3.books.xml";
declare variable $gData := doc($fileName)//book;
declare variable $price :=  $gData//price;
declare variable $sumPrice := round(sum($price) * 100) div 100;

declare variable $avg := round(avg($price) * 100) div 100;
declare variable $max := max($price);
declare variable $lowest := min($price);

<html>
<head>
<style>

<![CDATA]
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 800px;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
.money {
  text-align: right;
  color: green;
  
}


tr:nth-child(even) {
  background-color: #dddddd;
}
]]>
</style>
</head>
<body>

<h2>w3.books.xml</h2>

<table>
  <tr>
    <th>Author</th>
    <th>Price</th>
    <th>Title</th>
  </tr>
  <tbody>
  
   
     {

         for $x in $gData 
         order by data($x/title)
         return 
         <tr>

               <td>{data($x/author)}</td>

               {
                      if (data($x/price) > 30)
                      then <td class="money"> *{data($x/price)}</td> 
                      else <td class="money">{data($x/price)}</td> 

               }

            
          
               <td>{data($x/title)}</td>  

         </tr> 

    }

  </tbody>
  <tfoot>
   <tr>
       <td>total  </td>
       <td class="money" >{$sumPrice}</td>
        <td>  </td>
        </tr>
      
         <tr>
       <td>average </td>
       <td class="money">{$avg}</td>
        <td>  </td>
        </tr>
        <tr>

           
       <td>highest</td>
       <td class="money">{$max}</td>
        <td>  </td>
        </tr>
        <tr>     

         <td>lowest</td>
       <td class="money">{$lowest}</td>
        <td>  </td>
        </tr>
        <tr>   



  </tfoot>


</table>
</body>
</html>
