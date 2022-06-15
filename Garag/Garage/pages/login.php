<?php 
require_once('inc/functions.php');

$dbh = getDbConnection();

if(isset($_POST['submitL'])){
    
    $mail = $_POST['mail'];
    $passwd = $_POST['passwd'];

    
    if(checkLogin($dbh, $mail, $passwd)) {
        echo "suc6";
        $_SESSION['user'] = $mail;
        echo "<meta http-equiv='refresh' content='0'>";
        header('location:index.php?action=1');
        // SEND TO HOME PAGE
        
    } 
    else {
        echo "<div class='incorrect'>Email or Password is inncorrect</div>"; 
    } 
}

require_once('header.php');
?>

<div class='container'>   

        <h2> Login into Los Santos Customs</h2> 

        <form action='' method='post'>
        <div class="form-group">
            <label for="mail">E-Mail adress</label>
            <input type="text" name="mail" class="form-control" id="mail" placeholder="Enter email">
        </div>
        <div class="form-group">
            <label for="passwd">Password</label>
            <input type="password" name="passwd" class="form-control" id="passwd" placeholder="Enter password">
        </div>
        <div class="incorrect"></div>
        <button type="submit" name="submitL" class="btn btn-primary">Submit </button>

        <a href="?action=3" class="btn btn-primary">No account? Register here</a> <!-- <button type="submit" name="register" class="btn btn-primary"> </button> -->
    </div>
    </form>