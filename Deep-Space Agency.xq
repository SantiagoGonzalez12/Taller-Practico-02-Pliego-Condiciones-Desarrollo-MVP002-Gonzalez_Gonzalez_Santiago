declare namespace file="http://expath.org/ns/file";

let $html :=
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>Deep-Space Agency</title>
  </head>
  <body>
    <h1>Deep-Space Agency</h1>
    <h2>Planetas con temperatura habitable (10-35ºC)</h2>
    
  </body>
</html>

return file:write("C:/Users/IEUser/Desktop/proyecto/index.html",$html)