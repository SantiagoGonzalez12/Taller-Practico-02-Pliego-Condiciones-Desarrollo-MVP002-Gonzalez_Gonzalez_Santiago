declare namespace file="http://expath.org/ns/file";

let $html :=
<html>
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Deep-Space Agency</title>
    <link rel="stylesheet" href="estilos.css"/>
  </head>
  <body>
    <h1>Deep-Space Agency</h1>
    <h2>Planetas con temperatura habitable (10-35ºC)</h2>
    
  </body>
</html>

return file:write(
  "C:/Users/IEUser/Desktop/Taller-Practico-02-Pliego-Condiciones-Desarrollo-MVP002-Gonzalez_Gonzalez_Santiago/index.html",
  $html,  
  map {
    "method": "html",
    "version": "5.0",
    "indent": "yes",
    "omit-xml-declaration": "yes",
    "encoding": "UTF-8"
  }
)