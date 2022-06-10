<?php

//db functie
require_once('var.php');

function getDbConnection() {

    try {
        $dbh =new PDO('mysql:host='.HOST.';charset=utf8;dbname='.DBNAME, USER, PASS);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch(Execption $e) {
        echo 'Caught Execption: ', $e->getMessage(), "\n";
    }

    return $dbh;

}


function makeAppointment() {

    $dbh = getDbConnection(); 
    if (isset($_POST['submit'])) {  
        
        $begindate = date("Y/m/d");
        $user = "naam"; //$_SESSION['id']
        $idcar = 123456;

        $appointment = "  INSERT INTO afspraak(begindatum, einddatum, naam, aantal_uren, idmonteur, idvoertuig)
                    VALUES('$begindate', '$begindate','$user', '4', '1','$idcar')";
        $dbh->exec($appointment);

        echo "<meta http-equiv='refresh' content='0'>";
    }
}




?>