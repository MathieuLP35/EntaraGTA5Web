<h1 class="my-5 py-5 d-flex justify-content-center">GARAGE</h1>

<?php
    require './includes/class/garage.class.php';

    $steamId=$_SESSION['steamid'];
    $steamId_hex = hex($steamId);
    $request = "SELECT * FROM owned_vehicles, users WHERE identifier = 'steam:$steamId_hex' AND owned_vehicles.owner = users.identifier";
    $query = $bdd->query($request);
?>


<a href="?page=compte" class="btn btn-success" data-anim-type="fade-in-up"><i style="margin-right:8px" class="fas fa-user mr-2"></i>Revenir sur mon compte</a>
<table class="table table-bordered">
    <thead>
    <tr>
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
                $classGarage = new compteGarage($data);
                $classGarage->showGarage(); 
            }
        ?>
    </tbody>
</table>