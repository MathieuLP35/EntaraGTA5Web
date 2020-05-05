<h1 class="my-5 py-5 d-flex justify-content-center">REGISTRE DES IMMATRICULATIONS</h1>

<?php
    require './includes/class/immat.class.php';

    $request = "SELECT * FROM owned_vehicles, users WHERE users.identifier=owned_vehicles.owner";
    $query = $bdd->query($request);
?>


<table class="table table-bordered">
    <thead>
    <tr>
        <th>Propriétaire</th>
        <th>Immatriculation</th>
		<th>Action</th>
    </tr>
    </thead>
    <tbody id="myTable">
        <?php 
            while ($data = $query->fetch()) {
                $dec = json_decode($data['vehicle']);
                try {
                    $immatriculatation = $dec->{'plate'};
                } catch (Exception $e) {
                    $immatriculatation = "Non Immatriculé";
                }
                $classGarage = new Immat($data);
                $classGarage->showRegistre(); 
            }
        ?>
    </tbody>
</table>