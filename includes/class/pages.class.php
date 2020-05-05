<?php
class GestionPages
{
    private $pageActuelle;
    private $pageDefault = "./pages/infos.php";
    private $page404 = "./pages/404.php";

    //setter pour la page par défault
    public function setDefault(string $default)
    {
        $this->pageDefault =  "pages/".$default.".php";
    }

    public function isActuelle($page): bool
    {
       return "./pages/".$page.".php" === $this->pageActuelle;
    }

    //constructeur auquel on peut passer une page par défault
    public function __construct($default = false)
    {
        require 'includes/config/config.inc.php';
        require 'includes/config/bdd.inc.php';

        if($default)
        {
            $this->setDefault($default);
        }

        if(isset($_GET["page"]))
        {

            $this->pageActuelle = "./pages/".$_GET["page"].".php";

            //on test si la page existe
            //si elle existe on la charge
            //sinon on charge la page 404
            file_exists($this->pageActuelle) ? require $this->pageActuelle : require $this->page404;

        } else
        {
            //si on n'a pas founrit de page dans le tableau $_GET
            //on affiche la page par defaut
            require $this->pageDefault;
        }
    }

}