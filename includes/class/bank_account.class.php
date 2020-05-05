<?php 

    class Bank_Account {
        private $firstname;
        private $lastname;
        private $bank;
    
        public function __construct($data)
        {
            $this->firstname = $data['firstname'];
            $this->lastname = $data['lastname'];
            $this->bank = number_format($data['bank'], 2);
        }
    
        public function getFirstname()
        {
            return $this->firstname;
        }
    
        public function getLastname()
        {
            return $this->lastname;
        }
        
        public function getBank()
        {
            return $this->bank;
        }
    
        public function showBankAccountList(){
            echo'
            <tr>
                <td>'.$this->getFirstname().'</td>
                <td>'.$this->getLastname().'</td>
                <td>'.$this->getBank().' $</td>
            </tr>
            ';
        }
    }