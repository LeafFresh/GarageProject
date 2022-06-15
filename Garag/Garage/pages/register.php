<?php 

    require_once('inc/functions.php');

    $dbh = getDbConnection();

    if(isset($_POST['submitA'])) {

    $name =$_POST['name'];   
    $email =$_POST['mail'];  
    $passwd =$_POST['passwd'];  
    $hash =password_hash($passwd, PASSWORD_DEFAULT);

    $sql ="INSERT INTO klant (voornaam, mail, wachtwoord)
            VALUES (:name, :email, :passwd)";

    $query = $dbh->prepare($sql);
    
    $query->bindParam(':name', $name, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':passwd', $hash, PDO::PARAM_STR);

    $query->execute();
    header('location:index.php?action=2');
}
require_once('header.php');
?>

<!-- hier komt forum -->
<div class='container'>   

        <h2> Register to Los Santos Customs</h2> 

        <form action='' method='post'>
        <div class="form-group">
            <label for="mail">Name</label>
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name">
        </div>
        <div class="form-group">
            <label for="mail">E-Mail adress</label>
            <input type="email" name="mail" class="form-control" id="mail" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="passwd">Password</label>
            <input type="password" name="passwd" class="form-control" id="passwd" placeholder="Enter password">
        </div>
        <button type="submit" name="submitA" class="btn btn-primary" id="submitA">Submit </button>
    </div>
</form>