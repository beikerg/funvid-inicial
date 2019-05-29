<?php

	if(empty($_POST['fecha_clinica']) || empty($_POST['evaluacion_clinica']) || empty($_POST['medicamentos_clinica']) || empty($_POST['psiquiatra_clinica']) ){
		
  
		$error = "<center><p class='alert alert-danger alert-dismissible'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><strong>¡Error!</strong> Debe rellenar todos los campos.</p></center>";

		echo $error; 

	}elseif(!empty($_POST['fecha_clinica']) && !empty($_POST['evaluacion_clinica'])  && !empty($_POST['medicamentos_clinica']) && !empty($_POST['psiquiatra_clinica']))
	{
		// include Database connection file 
			include("../../db_connection.php");

		// get values 
		$id_residente = $_POST['id_residente'];
		$etapa_clinica = $_POST['etapa_clinica'];
		$psiquiatra_clinica = $_POST['psiquiatra_clinica'];
		$fecha_clinica = $_POST['fecha_clinica'];
		$evaluacion_clinica = $_POST['evaluacion_clinica'];
		$medicamentos_clinica = $_POST['medicamentos_clinica'];
		

			$query = "INSERT INTO interv_clinica (id_residente, etapa_clinica, fecha_clinica, evaluacion_clinica, medicamentos_clinica, psiquiatra_clinica) VALUES ('$id_residente', '$etapa_clinica', '$fecha_clinica', '$evaluacion_clinica', '$medicamentos_clinica', '$psiquiatra_clinica')";

			if(!$rquery = $mysql->query($query))
			{
				echo  "Error al agregar Intervención Clìnica".$mysql->errno;
			}else{
				 echo "<center><p class='alert alert-success alert-dismissible'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button><strong>¡Bien Hecho!</strong> Se ha agregado con éxito.</p></center>";

	    ?> <script type="text/javascript">	
	    	 	setTimeout(function(){	
	    	 		$("#add_new_Clinica_modal").modal("hide");
	    	 		location.reload();
	    	 	}, 1000);    	
	    	
	    </script>
	    <?php
			}

		
	}else{
		echo "Error del POST",$mysql->error;
	}
?>