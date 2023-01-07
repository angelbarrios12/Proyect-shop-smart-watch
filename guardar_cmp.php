<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="desingpr.css">
    <meta charset="utf-8">
    <title>SWATCH GUARDADO</title>
  <body background="imagenesU/fondo2.jpg">
<div class="logo">
    <a href="indexU.html"><img src="imagenesU/logoPSW0.png" alt="">
</div>
<div class="linea">
      <img src="imagenesU/linea.png" alt="">
</div>
<div class="qs">
      <a href="somos.html"><img src="imagenesU/qs.png" alt=""></a>
</div>
<div class="c">
      <a href="contactos.html"><img src="imagenesU/c.png" alt=""></a>
</div>
<div class="s">
      <a href="regist.html"><img src="imagenesU/s.png" alt=""></a>
</div>
<div class="is">
      <a href="inicie_ses.html"><img src="imagenesU/is.png" alt=""></a>
</div>
<div class="ej">
      <img src="imagenesU/ej.png" alt="">
</div>
</head>
<body background="imagenesU/fondo2.jpg">
<div id="container">
<font class="letra">
<?php
$user     = "root";
$database = "swatch"; //nombre base de datos
$pass     = "";
$host     = "localhost";

//conexion en la base de datos
$mysqli = new mysqli($host, $user, $pass, $database);
if ($mysqli) {
    $result = mysqli_query($mysqli, "SELECT * FROM producto") or die(mysqli_error($mysqli, "error"));
    //-------------------------------------------------------------------------------------------------------

    //ventana de conexion para cada producto
    // guarda los datos en el carrito en la base de datos

    if (isset($_POST['golden'])) {

        $modelo = "Gold (v1)";
        $color  = "Dorado";
        $precio = "8,500.00";

        echo '<img src="imagenesU/M1G.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color Disponible:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");

    }
    if (isset($_POST['silver'])) {

        $modelo = "Silver (v1)";
        $color  = "Plateado";
        $precio = "7,000.00";

        echo '<img src="imagenesU/M3S.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color Disponible:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");

    }
    if (isset($_POST['silveriia'])) {

        $modelo = "Silver IIA (v1)";
        $color  = "Gris";
        $precio = "5,600.00";

        echo '<img src="imagenesU/M4SII.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");

    }
    if (isset($_POST['hipster'])) {

        $modelo = "Hipster (v1)";
        $color  = "Rosa Dorado";
        $precio = "4,600.00";

        echo '<img src="imagenesU/M7H.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");
    }
    if (isset($_POST['abstrac'])) {

        $modelo = "Abstract(v1)";
        $color  = "Azul Obscuro";
        $precio = "3,500.00";

        echo '<img src="imagenesU/M2A.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");

    }
    if (isset($_POST['kids'])) {

        $modelo = "Kids (v1)";
        $color  = "Rojo";
        $precio = "2,800.00";

        echo '<img src="imagenesU/M6K.png" width="400" height="250">';
        echo "<b>Modelo:</b> $modelo";
        echo "<br>";
        echo "<b>Color:</b>  $color";
        echo "<br>";
        echo "<b>Precio:</b>$ $precio";

        $consulta  = "INSERT INTO Producto(modelo, color, precio) VALUES ('$modelo','$color','$precio')";
        $resultado = mysqli_query($mysqli, $consulta) || die("Ha ocurrido un error al insertar");
    }
} else {echo "Error";}
?>
</font>
</div>

<div class="boton2">
<label class="btn"> SWatch Guardado</label>
</div>
<div class="boton">
      <a class="btn" href="allProducts.html">Mas Productos</a>
 </div>
</body>
</html>
