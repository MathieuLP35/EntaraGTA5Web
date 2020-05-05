<?php

class Immat{

    private $firstname;
    private $lastname;
    private $plaque;

    public function __construct($data)
    {
        $this->firstname=$data['firstname'];
        $this->lastname=$data['lastname'];
        $this->plaque=$data['plate'];
    }

    public function getOwnerFirstname()
    {
        return $this->firstname;
    }

    public function getOwnerLastname()
    {
        return $this->lastname;
    }

    public function getPlaque()
    {
        return $this->plaque;
    }

    public function showRegistre(){
        echo'
        <tr>
            <td>'.$this->getOwnerFirstname().' '.$this->getOwnerLastname().'</td>
            <td>'.$this->getPlaque().'</td>
            <td>
                <div class="dropdown">
                    <button type="submit" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                        Action
                    </button>
                    <!-- 
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Modifier</a>
                    </div> 
                    -->
                </div>
            </td>
        </tr>
        ';
    }
}