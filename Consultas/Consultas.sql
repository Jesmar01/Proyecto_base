

//consulta recorre  los datos de la tabla registro para iniciar sesion 
"SELECT * FROM `registros` WHERE usuario AND Contrasena

//consulta para crear nuevos usuarios en la tabla registros
INSERT INTO   registros ($campos) values ($valores)

//consulta para agregar juego y su descripcion en la tabla juegos
INSERT INTO juegos(nombre,descripcion) VALUES ('$nombre' , '$descripcion') 

//consulta para mostrar o seleccionar todos los juegos
SELECT * FROM `juegos`

//Consulta para seleciconar un dato especifico en la tabla juegos
SELECT `id`, `nombre`, `descripcion` FROM `juegos` WHERE id=1

//Consulta para mostrar los datos en la tabla p-mentales
SELECT * FROM `p_mentales`

//Consulta para borrar un dato de la tabla juegos
DELETE FROM juegos WHERE id_juegos='".$id_juegos."'"


//Consulta para modificar un dato de la tabla juegos
UPDATE juegos SET nombre='".$nombre."',descripcion='".$descripcion."''"


