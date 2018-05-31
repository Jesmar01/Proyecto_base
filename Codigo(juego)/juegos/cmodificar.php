<?php

	# conectare la base de datos
    $enlace=@mysqli_connect('localhost', 'root', '', 'bd_juegos');
    if(!$enlace){
        die("imposible conectarse: ".mysqli_error($enlace));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
	/*Inicia validacion del lado del servidor*/
	if (empty($_POST['id_juegos'])) {
           $errors[] = "ID vacío";
        } else if (empty($_POST['nombre'])){
			$errors[] = "nombre vacío";
		} else if (empty($_POST['descripcion'])){
			$errors[] = "descripcion vacío";
		}else if (
			!empty($_POST['id_juegos']) &&
			!empty($_POST['nombre']) && 
			!empty($_POST['descripcion']) &&			
		){

		// escaping, additionally removing everything that could be (html/javascript-) code
		$nombre=mysqli_real_escape_string($enlace,(strip_tags($_POST["nombre"],ENT_QUOTES)));
		$descripcion=mysqli_real_escape_string($enlace,(strip_tags($_POST["descripcion"],ENT_QUOTES)));
		$id_p_cognitivo=mysqli_real_escape_string($enlace,(strip_tags($_POST["id_p_cognitivo"],ENT_QUOTES)));
		$id_p_mentales=mysqli_real_escape_string($enlace,(strip_tags($_POST["id_p_mentales"],ENT_QUOTES)));
		$id_juegos=intval($_POST['id_juegos']);
		$sql="UPDATE juegos SET nombre='".$nombre."',descripcion='".$descripcion."''";
		$query_update = mysqli_query($enlace,$sql);
			if ($query_update){
				$messages[] = "Los datos han sido actualizados satisfactoriamente.";
			} else{
				$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($enlace);
			}
		} else {
			$errors []= "Error desconocido.";
		}
		
		if (isset($errors)){
			
			?>
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
					<strong>Error!</strong> 
					<?php
						foreach ($errors as $error) {
								echo $error;
							}
						?>
			</div>
			<?php
			}
			if (isset($messages)){
				
				?>
				<div class="alert alert-success" align="center" role="alert">
						<button type="button" class="close" data-dismiss="alert">&times;</button>
						<strong>¡Bien hecho!</strong>
						<?php
							foreach ($messages as $message) {
									echo $message;
								}
							?>
				</div>
				<?php
			}
			
?>	