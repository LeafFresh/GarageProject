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

    
function checkLogin($con, $voornaam, $hash) {
                try {
                    $con = getDBConnection();

                    $query = $con->prepare("SELECT * FROM klant WHERE voornaam = :voornaam");
                    $query->bindParam(":voornaam", $voornaam, PDO::PARAM_STR);
                    $query->execute();
        
                    if($row = $query->fetch(PDO::FETCH_ASSOC)) {
                        if(password_verify($hash, $row["wachtwoord"])){
                            return TRUE;
                            header("location:test.php"); 
                        }
                    }
                    return FALSE;
                }
                catch (Exception $e) {
                    echo "Caught exception: " , $e->getMessage(), "\n";
                }
            }

            ?>