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







?>