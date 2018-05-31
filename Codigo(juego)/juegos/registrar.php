<?php
$enlace=@mysqli_connect('localhost', 'root', '', 'bd_juegos');
$nombre= $_POST["nombre"];
$descripcion= $_POST["descripcion"];



$insertar=  "INSERT INTO juegos(nombre,descripcion) VALUES ('$nombre' , '$descripcion')"; 






$resultado= mysqli_query($enlace, $insertar); 
if (!$resultado) {
	echo "error al registrarse";
}else{
	echo '<script language="javascript">alert("Registro exitoso");</script>'; 
	header("location:registro_juego.php");	
	exit;
}





mysqli_close($enlace);