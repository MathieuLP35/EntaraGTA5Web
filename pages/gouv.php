<h1 class="my-5 py-5 d-flex justify-content-center">Liste des citoyens de Los Santos</h1>

<?php
    require './includes/class/civil.class.php';

    $request = "SELECT * FROM users, jobs WHERE users.job=jobs.name";
    $query = $bdd->query($request);
?>


<table class="table table-bordered">
    <thead>
    <tr>
        <th>Prénom</th>
        <th>Nom</th>
		<th>Sexe</th>
        <th>Date de naissance</th>
        <th>Job</th>
    </tr>
    </thead>
    <tbody id="myTable">
        <?php 
            while ($data = $query->fetch()) {
                $classGarage = new Civil($data);
                $classGarage->showCivilList(); 
            }
        ?>
    </tbody>
</table>