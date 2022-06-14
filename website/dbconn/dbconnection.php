<?php

	define("HOST", "localhost");
	define("DBNAME", "garage");
	define("USER", "root");
	define("PASS", "");

	function getDBConnection() {
		try {		
			$con = new PDO("mysql:host=".HOST.";charset=utf8;dbname=".DBNAME, USER. PASS);		
			$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			}
		catch (Exception $e) {
			echo "Caught exception: " , $e->getMessage(), "\n";
		}
	return $con;
	}
?>
	