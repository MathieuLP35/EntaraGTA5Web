<h1 class="my-5 py-5 d-flex justify-content-center">STAFF</h1>

<?php
    require './includes/class/equipe.class.php';

    $request = "SELECT * FROM users WHERE permission_level > 0";
    $query = $bdd->query($request);

    while ($staff = $query->fetch()) {
        $classStaff = new Staff($staff);
        $classStaff->afficherStaff();
    }
?>

