<?php

    class compteGarage{

        private $plaque;

        public function __construct($data)
        {
            $this->plaque=$data['plate'];
        }

        public function getPlaque()
        {
            return $this->plaque;
        }

        public function showGarage(){
            echo'
            <tr>
                <td>'.$this->getPlaque().'</td>
                <td>
                    <div class="dropdown">
                        <button type="submit" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                            Action
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Modifier</a>
                        </div>
                    </div>
                </td>
            </tr>
            ';
        }
    }