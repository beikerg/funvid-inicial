<?php

// Variables de conexion 
$host = "localhost"; // MySQL host name eg. localhost
$user = "root"; // MySQL user. eg. root ( if your on localserver)
$password = ""; // MySQL user password  (if password is not set for your root user then keep it empty )
$database = "jyeservi_funvid"; // MySQL Database name

// Conectar a la base de datos MySQL
$mysql = new mysqli($host, $user, $password, $database) or die("Could not connect to database");

	if($mysql->connect_errno):
		echo "Conexión no esitosa".$mysql->connect_error;
	endif;

	

?>	