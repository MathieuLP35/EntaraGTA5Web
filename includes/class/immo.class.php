<?php 

    class Immo {
        private $adresse;
        private $prix_location;
        private $prix_achat;
    
        public function __construct($data)
        {
            $this->adresse = $data['label'];
            $this->prix_location = $data['price'] / 200;
            $this->prix_achat = $data['price'];
        }
    
        public function getAdresse()
        {
            return $this->adresse;
        }
    
        public function getPrixLocation()
        {
            return $this->prix_location;
        }

        public function getPrixAchat()
        {
            return $this->prix_achat;
        }
    
        public function showPropertiesList(){
            echo'
            <tr>
                <td>'.$this->getAdresse().'</td>
                <td>'.$this->getPrixLocation().' $</td>
                <td>'.$this->getPrixAchat().' $</td>
            </tr>
            ';
        }
    }