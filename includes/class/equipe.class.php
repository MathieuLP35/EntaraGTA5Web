<?php
    class Staff{
        private $firstname;
        private $lastname;
        private $rank;

        public function __construct($data){
            $this->firstname=$data['firstname'];
            $this->lastname=$data['lastname'];
            $this->rank=$data['permission_level'];
        }

        public function getFirstname(){
            return $this->firstname;
        }

        public function getLastname(){
            return $this->lastname;
        }

        public function getRank($rank) {
            switch ($rank) {
                case 0:
                    $PlayerRank = 'Joueur';
                break;
                case 1:
                    $PlayerRank = 'Staff';
                break;
                case 2:
                    $PlayerRank = 'Modérateur';
                break;
                case 3:
                    $PlayerRank = 'Staff';
                break;
                case 4:
                    $PlayerRank = 'Staff';
                break;
                case 5:
                    $PlayerRank = 'Staff';
                break;
                case 6:
                    $PlayerRank = 'Staff';
                break;
                case 7:
                    $PlayerRank = 'Staff';
                break;
                case 8:
                    $PlayerRank = 'Administrateur';
                break;
                case 9:
                    $PlayerRank = 'Gérant';
                break;
                case 10:
                    $PlayerRank = 'Développeur';
                break;
            }
            return $PlayerRank;
        }

        public function afficherStaff() {
            echo'
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div class="card">
                    <div class="card-header text-center">
                        <img src="img/team/staff.png" id="avatar" class="rounded-circle">
                    </div>
                    <div class="list-group text-center">
                        <div class="list-group-item" style="color: black">'.$this->getFirstname().' '.$this->getLastname().'</div>
                        <div class="list-group-item" style="color: black"><strong>'.$this->getRank($this->rank).'</strong></div>
                    </div>
                </div>
            </div>
            ';
        }
    }


