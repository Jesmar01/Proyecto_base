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
	 if (empty($_POST['id_juegos'])){
			$errors[] = "Codigo Vacio";
		}   else if (
			!empty($_POST['id_juegos']) 
			
		){

		// escaping, additionally removing everything that could be (html/javascript-) code
			// escaping, additionally removing everything that could be (html/javascript-) code
	
		$id_juegos=intval($_POST['id_juegos']);
		
		$sql="DELETE FROM juegos WHERE id_juegos='".$id_juegos."'";
		$query_delete = mysqli_query($enlace,$sql);
			if ($query_delete){
				$messages[] = "Los datos han sido eliminados satisfactoriamente.";
			} else{
				$errors []= "Lo siento algo ha salido mal intenta nuevamente.".mysqli_error($enlace);
			}
		} else {
			$errors []= "Error desconocido.";
		}
		
		if (isset($errors)){
			
			?>
			<div class="alert alert-danger col-md-5 col-md-offset-4" align="center" role="alert">
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
				<div class="alert alert-success col-md-8 col-md-offset-2" align="center" role="alert">
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