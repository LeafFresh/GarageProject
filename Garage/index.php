<?php
require_once('pages/header.html');
require_once('inc/functions.php');

$dbh = getDbConnection(); 
$action = $_GET['action'];

if(empty($_SESSION['user'])) { //resets the userinput after logging out, this way no error show up 😎😎😎😎😎😎
    $_SESSION['user'] = 0; 
 }
 //echo $_SESSION['user'];
 //if ($_SESSION['user'] == 0) {
    // if ($action == "") {
    //     require_once('pages/home.php');
    // }
    if ($action == "1")  {
        require_once('pages/home.php');
    }
    if ($action == "2")  {
        require_once('pages/login.php');
        
    }
    if ($action == "3")  {
        require_once('pages/register.php');
        
    }
    if ($action == "4")  {
        require_once('pages/appointment.php');
        
    }
    if ($action == "5")  {
        require_once('pages/status.php');
        
    }
    if ($action == "6")  {
        require_once('pages/profile.php');
        
    }
    else if ($action != "1" && $action != "2" && $action != "3" && $action != "4" && $action != "5" && $action != "6" && $action != "7" && $action != "8" && $action != "9" && $action != "10" && $action != "" && $action != "11") {
        echo "Invalid action";
    }


?>