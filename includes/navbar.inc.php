  <!-- Navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container">

      <!-- Brand -->
      <a class="navbar-brand waves-effect" target="_blank">
        <img src="img/logo.png" alt="Logo">
      </a>

      <!-- Collapse -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- Links -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Left -->
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link waves-effect" href="index.php">Accueil</a>
          </li>
          <li class="nav-item">
            <a class="nav-link waves-effect" href="?page=annonce">Actualité</a>
          </li>
          <?php if (isset($_SESSION['steamid'])) { ?>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="?page=compte">Mon Compte</a>
            </li>
          <?php if (getAccessLevel($bdd, $_SESSION['steamid']) >= 1) { ?>
            <li class="nav-item">
              <a class="nav-link waves-effect" href="#">Administrateur</a>
            </li>
          <?php } 
          }
          ?>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" target="_blank">Métiers</a>
            <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="?page=cardealer"><i class="fas fa-car"></i> Concessionnaire</a>
              <a class="dropdown-item" href="?page=police"><i class="fas fa-helicopter"></i> Police</a>
              <a class="dropdown-item" href="?page=immo"><i class="fas fa-warehouse"></i> Agent Immobillier</a>
              <a class="dropdown-item" href="?page=bank"><i class="fas fa-money-check-alt"></i> Banque</a>
              <a class="dropdown-item" href="?page=gouv"><i class="fas fa-flag-usa"></i> Gouvernement</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link waves-effect" href="?page=staff" target="_blank">Equipe</a>
          </li>
        </ul>

        <!-- Right -->
        <ul class="navbar-nav nav-flex-icons">
          <li class="nav-item">
            <a href="#" class="nav-link waves-effect" target="_blank">
              <i class="fab fa-discord"></i>
            </a>
          </li> 
          <li class="nav-item">
            <a href="#" class="nav-link waves-effect" target="_blank">
              <i class="fab fa-teamspeak"></i>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link waves-effect" target="_blank">
              <i class="fab fa-youtube"></i>
            </a>
          </li>
          <li class="nav-item">
          <?php
            if (!isset($_SESSION['steamid'])) {
              loginbutton();
            } else {
              logoutbutton();
            }
          ?>
          </li>
        </ul>

      </div>

    </div>
  </nav>
  <!-- Navbar -->
