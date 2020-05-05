<?php 

    class Civil {
        private $firstname;
        private $lastname;
        private $naissance;
        private $sex;
        private $job;
    
        public function __construct($data)
        {
            $this->firstname = $data['firstname'];
            $this->lastname = $data['lastname'];
            $this->sex = $data['sex'];
            $this->naissance = $data['dateofbirth'];
            $this->job = $data['label'];
        }
    
        public function getFirstname()
        {
            return $this->firstname;
        }
    
        public function getLastname()
        {
            return $this->lastname;
        }
    
        public function getSex()
        {
            if ($this->sex == 'm') {
                $sexe = 'Homme';
            } 
            else if ($this->sex == 'f') {
                $sexe = 'Femme';
            }
            return $sexe;
        }

        public function getNaissance()
        {
            return $this->naissance;
        }
        
        public function getJob()
        {
            return $this->job;
        }
    
        public function showCivilList(){
            echo'
            <tr>
                <td>'.$this->getFirstname().'</td>
                <td>'.$this->getLastname().'</td>
                <td>'.$this->getSex().'</td>
                <td>'.$this->getNaissance().'</td>
                <td>'.$this->getJob().'</td>
            </tr>
            ';
        }
    }