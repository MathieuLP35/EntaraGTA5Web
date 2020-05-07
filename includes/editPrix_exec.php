<?php

require 'config/config.inc.php';
require 'config/bdd.inc.php';

$prix = $_POST['prix'];
$id = $_POST['veh_id'];

$r = "UPDATE vehicles SET price = :price WHERE id = :id";
$prepare = $bdd->prepare($r);
$prepare->bindValue(':id', $id, PDO::PARAM_INT);
$prepare->bindValue(':price', $prix, PDO::PARAM_INT);
$prepare->execute();