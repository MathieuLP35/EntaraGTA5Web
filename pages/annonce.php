<h1 class="my-5 py-5 d-flex justify-content-center">ANNONCE</h1>

<?php
    require './includes/class/annonce.class.php';

    $reqNews = "SELECT * from news ORDER BY date DESC LIMIT 3";
    $news = $bdd->query($reqNews);
     
    while ($annonce = $news->fetch()){

        $classAnnonce = new Annonce($annonce);
        $classAnnonce->afficherAnnonce();

    }
