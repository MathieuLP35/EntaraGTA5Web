<?php
class Concess {

    private $id;
    private $model;
    private $vname;
    private $label;
    private $prix;

    public function __construct($data) {
        $prix_base = intval($data['price']);
        $prix_taux = $prix_base * 50 / 100;
        $prix_final = $prix_base + $prix_taux;

        $this->id=$data['id'];
        $this->model=$data['model'];
        $this->vname=$data['vname'];
        $this->label=$data['label'];
        $this->prix=$prix_final;
    }

    public function getId() {
        return $this->id;
    }

    public function getModel() {
        return $this->model;
    }

    public function getVname() {
        return $this->vname;
    }

    public function getLabel() {
        return $this->label;
    }

    public function getPrix() {
        return $this->prix;
    }

    public function showVehicule(){
        echo'
        <tr>   
            <td width="25%"><img src="img/concess_img/'.$this->getModel().'.jpg" class="w-100 img-thumbnail"></td>
            <td>'.$this->getVname().'</td>
            <td>'.$this->getLabel().'</td>
            <td><span id="'.$this->getId().'" class="prix">'.$this->getPrix().'</span> $ <a class="edit">EDIT</a> <input type="text" class="editPrice"> <a data-id="'.$this->getId().'" class="ok">Valider</a></td>
        </tr>
        ';
    }
}