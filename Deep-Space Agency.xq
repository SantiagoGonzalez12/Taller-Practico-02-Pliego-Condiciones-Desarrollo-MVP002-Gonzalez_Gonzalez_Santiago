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
    <secction class="galeria"/>
    {
      for $ExoP in //Exoplaneta
      let $temp := number($ExoP/TemperaturaMedia)
      where $temp >= 10 and $temp <= 35
      return 
        <figure class = "planeta-img">
        <img src="https://muyinteresante.okdiario.com/wp-content/uploads/sites/5/2023/04/earth-11015_12804.jpg?resize=999,1024"/>
        <h3>{$ExoP/NombreComun/text()}</h3>
        <span>{$temp} ºC</span>
        
    }
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