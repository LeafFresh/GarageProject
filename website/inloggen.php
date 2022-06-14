<?php
	include_once 'dbconn/dbconnection.php';
    session_start();
?>
<!DOCTYPE html>	
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="Beschrijving" content="">
        <meta name="authors" content="William van den Broek & Reinier Zorg">
        <meta name="keywords" content="LosSantosCustoms">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@1,800&display=swap" rel="stylesheet">
        <link rel="icon" type="image/png" href="images/LosSantosCustoms.jpeg">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet/less" type="text/css" href="styles/style.css" />
        <script src="https://cdn.jsdelivr.net/npm/less@4" ></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>LosSantosCustoms</title>
    </head>

    <body>	
        <div class="bodycontainer">
            <div class="container">
            <img src="images/LosSantosCustoms.jpeg">
                <div class="row h-100 justify-content-center align-items-center">
                    <div class="formborder">
                        <div class="col-10 col-md-12 col-lg-12">		

                        <h3>inloggen</h3>
                            <div class="form-group">

                            <form   method="post" id="formulierinloggen" action="inloggen.php" ><br>
                                <div class="form-group">gebruikersnaam:
                                <input type="text" name="voornaam" required placeholder="Voornaam" class="form-control">
                                </div><br>
            
                                <div class="form-group">wachtwoord:
                                    <input type="password" name="wachtwoord" required placeholder="" class="form-control">
                                </div><br>


                                    <div class="inlogbutton">
                                    <input style="font-weight:bold" type="submit" name="submit" class="form-control" value="Registreren" style="background-color: #D65859;">
                                    </div>
                                </div><br>
                                <div>
                                    <p>Heeft u nog geen account? Druk dan <a href="aanmelden.php">hier</a> om je aan te melden</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <?php
        if(isset($_POST["submit"]))  
        {   


            $voornaam = $_POST['voornaam'];
            $wachtwoord = $_POST['wachtwoord'];
            $hash = password_hash($wachtwoord, PASSWORD_DEFAULT);

            //echo $voornaam;
            //echo $wachtwoord;

            //echo $hash;
            //echo "Favorite color is " . $_SESSION["hash"] . ".<br>";
            //echo 'appel';

            echo password_verify($wachtwoord, $hash);                

            $sessionhashed = $_SESSION["hash"];

            /*if(empty($_POST["voornaam"]) || empty($_POST["wachtwoord"]))  
            {
                echo '<label>All fields are required</label>';  
            }
            else
            {  
               $sql = "SELECT * FROM klant WHERE voornaam = :voornaam AND wachtwoord = :wachtwoord";  
               $statement = $con->prepare($sql);  
               $statement->execute(  
                    array(
                         'voornaam'     =>     $_POST["voornaam"],  
                          'wachtwoord'     =>     $_POST["wachtwoord"]  
                    )  
               );  
			    header("location:test.php"); 	*/
            if(empty($_POST["voornaam"]) || empty($_POST["wachtwoord"]))  
            {
                echo '<label>All fields are required</label>';  
            
            }
            
        }
    ?>
    </body>
</html>