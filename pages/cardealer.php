<h1 class="my-5 py-5 d-flex justify-content-center">CONCESSIONNAIRE</h1>

<?php
    require './includes/class/cardealer.class.php';

    $request = "SELECT *, vehicles.name AS vname, vehicles.category AS categ 
    FROM vehicles, vehicle_categories 
    WHERE vehicle_categories.name = vehicles.category ORDER BY price ASC";
    $query = $bdd->query($request);
?>

<div id="return"></div>
<a href="?page=cardealer_registre" class="btn btn-success my-3" data-anim-type="fade-in-up"><i style="margin-right:8px" class="fas fa-car"></i>Registre des immatriculations</a>

<input class="form-control" id="searchInput" type="text" placeholder="Rechercher..">
<table class="table table-bordered">
    <thead>
    <tr>
        <th>Images</th>
        <th>Nom</th>
        <th>Categorie</th>
        <th>Prix</th>
    </tr>
    </thead>
    <tbody id="searchTable">
    <?php
    while ($data = $query->fetch()) {
        $classCarDealer = new Concess($data);
        $classCarDealer->showVehicule();
    }
    ?>
    </tbody>
</table>