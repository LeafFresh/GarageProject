<?php
//sessionuser(); only using this to check if the login works and sees the logged in user
logout();



if(isset($_POST['submitL'])){
    
    $mail = $_POST['mail'];
    $passwd = $_POST['passwd'];

    
    if(checkLogin($dbh, $mail, $passwd)) {
        echo "suc6";
        $_SESSION['user'] = $mail;
        
        echo "<meta http-equiv='refresh' content='0'>";
        // SEND TO HOME PAGE
        
    } 
}
require_once('header.php');
?>

<form action="" method="post" enctype="multipart/form-data">
            <button type="submit" name="logout" class="btn btn-primary">Logout</button>
</form>

<img src="images/GTAcustoms.webp" class="LosSanto">
        
        <div class="headtext">
            
            <h1>Laat je auto bij ons repareren!!</h1>
                <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br> 
                    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,<br> 
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br> 
                    It has survived not only five centuries, but also the leap into electronic typesetting,<br> 
                    remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,<br> 
                    and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br> 
                </p>
        </div>
    <a class="buttonplace" href="?action=4">Maak een afspraak</a>
