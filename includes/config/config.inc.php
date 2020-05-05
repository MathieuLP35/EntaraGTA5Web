<?php

/**
 * Connexion à la base de donnée
 */
$database_host = "localhost";
$database_name = "bdd";
$database_user = "";
$database_password = "";

/**
 * Connexion Steam
 */
$steam_api_key = "7D7F90EA0343777A871B619AC1EF3979";
$steam_domain = "localhost";

$website_url = "http://localhost/projectrp";


/**
 * Configuration du serveur
 */

$server_settings['title'] = "Project RolePlay"; // Nom du serveur
$server_settings['ip'] = "127.0.0.1"; // ip du serveur
$server_settings['port'] = "30120"; // port du serveur
$server_settings['max_slots'] = 256; // nombre de slot maximum du serveur

/**
 * Récupération de l'état du serveur ainsi que son nombre de joueur
 */

/*
$infos = json_decode(file_get_contents("http://".$server_settings['ip'].":".$server_settings['port']."/info.json"), true);
$nbr_player = "0";
$srv_status = "<font style='color: red;font-width:weight;'>Hors Ligne</font>";

if($infos){
    $players = file_get_contents("http://".$server_settings['ip'].":".$server_settings['port']."/players.json");
    $infos = json_decode($players, true);
    $nbr_player = count($infos);
    $srv_status = "<font style='color: green;font-width:weight;'>En Ligne</font>";
}



$connected = false;
$infos = json_decode(file_get_contents("http://".$server_settings['ip'].":".$server_settings['port']."/info.json"), true);
if(!$infos){
    $connected = false;
    $nbr_player = "0";
} 
else{

    $players = file_get_contents("http://".$server_settings['ip'].":".$server_settings['port']."/players.json");
    if(!$players){

        $connected = false;

    } 
    else{
        $connected = true;
        $infos = json_decode($players, true);
        $nbr_player = count($infos);
    }

}

if($connected)
{
    $srv_status = "<font style='color: green;font-width:weight;'>En Ligne</font>";
}
else
{
    $srv_status = "<font style='color: red;font-width:weight;'>Hors Ligne</font>";
}*/