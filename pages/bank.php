<h1 class="my-5 py-5 d-flex justify-content-center">Liste des comptes bancaire</h1>

<?php
    require './includes/class/bank_account.class.php';

    $request = "SELECT * FROM users, jobs WHERE users.job=jobs.name";
    $query = $bdd->query($request);
?>


<table class="table table-bordered">
    <thead>
    <tr>
        <th>Prénom</th>
        <th>Nom</th>
		<th>Compte en banque</th>
    </tr>
    </thead>
    <tbody id="myTable">
        <?php 
            while ($data = $query->fetch()) {
                $classGarage = new Bank_Account($data);
                $classGarage->showBankAccountList(); 
            }
        ?>
    </tbody>
</table>