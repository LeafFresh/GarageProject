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


// LOGIN AND REGISTER FUCNTIONS 

function checkLogin($dbh, $mail, $passwd) {
    try {
        $query = $dbh->prepare("SELECT *
                                FROM klant
                                WHERE mail = :mail");
        $query->bindParam(':mail', $mail, PDO::PARAM_STR);
        $query->execute();
        
        if($row = $query->fetch(PDO::FETCH_ASSOC)) {
           
            if(password_verify($passwd, $row['wachtwoord'])){
                return TRUE;
                 $_SESSION['user'] = $row['mail'];
            }
        }
        return FALSE;
        echo "<div class='incorrect'>Email or Password is inncorrect</div>"; // put text at the bottom of the form
    }
    catch (Execption $e) {
        echo "Caught execption: ", $e->getMessage(), "\n";
    }

}

function sessionuser() {
    echo '<div class="alert alert-success" role="alert">';
    echo "<h2><img src='images/cloudcity.png' width='70px' height='45px'> Welcome, $_SESSION[user] To Los Santos Customs!</h2>";
    echo '</div>';
}

function logout() {
    if(isset($_POST['logout'])) {
        $_SESSION['user'] = 0;
        session_destroy();
        echo "<meta http-equiv='refresh' content='0'>";
    }
    }


?>