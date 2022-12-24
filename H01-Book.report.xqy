
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

<h2>SimpleBooks</h2>

<table>
  <tr>
    <th>Author</th>
    <th>Price</th>
    <th>Title</th>
  </tr>
  
  
   
     {
         let $fileName :="./data/simplebooks.xml"
         for $x in doc($fileName)//book
         order by data($x/title)
         return <tr>
               <td>{data($x/author)}</td>
               <td class="money"> {data($x/price)}</td> 
               <td>{data($x/title)}</td>  

         </tr> 

    }
  
</table>
</body>
</html>
