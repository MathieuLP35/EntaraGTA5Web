<?php
  require 'includes/steam/steamauth.php';
  require 'includes/config/config.inc.php';
  require 'includes/config/bdd.inc.php';
  require 'includes/fonction/fonction.inc.php';
  require 'includes/class/pages.class.php';
?>
<!DOCTYPE html>
<html lang="fr">
  <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>Project RP | Accueil</title>

      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/mdb.min.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">

      <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
      <script type="text/javascript" src="js/popper.min.js"></script>
      <script type="text/javascript" src="js/bootstrap.min.js"></script>
      <script type="text/javascript" src="js/mdb.min.js"></script>
      <script type="text/javascript" src="js/search.js"></script>
      <script type="text/javascript" src="js/cardealer.js"></script>
  </head>
  <body>
    <!-- Navigation -->
    <header>
      <?php require "includes/navbar.inc.php" ?> 
      <?php 
        $class_pages = new GestionPages('infos'); 
      ?>
    </header>
    <!-- Footer -->
    <?php require "includes/footer.inc.php"; ?>
  </body>
  <script type="text/javascript" src="js/cardealer.js"></script>
</html>