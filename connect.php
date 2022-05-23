<?php
	session_start();


	$servername = "localhost";
	$username = "root";
	$password = "";
	$nb = "goa";
		//↓create connection
	$conn = new mysqli($servername, $username, $password, $nb);
	//↓check connection
	if($conn->connect_error) {
		echo "Banco não encontrado";
		echo "<br>";
		die();

	}
	mysqli_query($conn,"SET NAMES 'utf8'");

	mysqli_query($conn,'SET character_set_connection=utf8');

	mysqli_query($conn,'SET character_set_client=utf8');

	mysqli_query($conn,'SET character_set_results=utf8');



?>	