<h1 class="my-5 py-5 d-flex justify-content-center">MON COMPTE</h1>

<?php
    require './includes/class/compte.class.php';
    require './includes/steam/userInfo.php';

    $classCompte = new Compte($bdd, $_SESSION['steamid']);
?>

<div class="page-wrapper m-5" style="width: 20%;">
<div class="card">
	<div class="card-header text-center">
        <img src='<?=$steamprofile['avatarfull']?>' id='avatar' class='rounded-circle'>
	</div>
	<div class="list-group text-center">
		<div class="list-group-item" style="color: black"><i class="fa fa-home fa-fw" aria-hidden="true"></i> Votre nom : <?php echo $classCompte->getFullname(); ?> </div>
		<div class="list-group-item" style="color: black"><i class="far fa-address-book"></i> Votre métier : <?php echo $classCompte->getJob(); ?>  </div>
        <div class="list-group-item" style="color: black"><i class="fas fa-briefcase"></i> Activité Secondaire : <?php echo $classCompte->getJob2(); ?>  </div>
		<div class="list-group-item" style="color: black"><i class="fas fa-transgender"></i> Votre sexe : <?php echo $classCompte->getSex(); ?> </div>
		<div class="list-group-item" style="color: black"><i class="fas fa-credit-card"></i> Compte bancaire : <?php echo $classCompte->getMoney(); ?>  $</div>
		<div class="list-group-item" style="color: black"><i class="fas fa-dollar-sign"></i> Argent de poche : <?php echo $classCompte->getBank();  ?>  $</div>
	</div>
	<a href="?page=garage" class="btn btn-success" data-anim-type="fade-in-up"><i style="margin-right:8px" class="fas fa-car"></i>Accéder à mon garage</a>
</div>