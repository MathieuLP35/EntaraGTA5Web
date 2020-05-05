<?php

try 
{
    $bdd = new PDO("mysql:host=$database_host;dbname=$database_name;charset=utf8", $database_user, $database_password);
    $bdd->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
} 
catch (Exception $e) 
{
    echo "Erreur de connexion a la base de données.";
}

