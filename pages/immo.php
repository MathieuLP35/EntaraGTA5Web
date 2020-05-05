<h1 class="my-5 py-5 d-flex justify-content-center">Liste des propriétés disponible de Los Santos</h1>

<?php
    require './includes/class/immo.class.php';

    $request = "SELECT * FROM properties";
    $query = $bdd->query($request);
?>


<table class="table table-bordered">
    <thead>
    <tr>
        <th>Adresse de la propriété</th>
        <th>Prix location</th>
        <th>Prix d'achat</th>
    </tr>
    </thead>
    <tbody id="myTable">
        <?php 
            while ($data = $query->fetch()) {
                $classGarage = new Immo($data);
                $classGarage->showPropertiesList(); 
            }
        ?>
    </tbody>
</table>