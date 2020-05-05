<?php
    class Compte {

        private $firstname;
        private $lastname;
        private $sex;
        private $job;
        private $job2;
        private $money;
        private $bank;
        
        public function __construct($bdd, $steamId) {
            $steamId_hex = hex($steamId);
            $request = "SELECT firstname, lastname, sex, money, bank, jobs.label AS label, jobs2.label AS label2 FROM users, jobs, jobs2 WHERE users.job=jobs.name AND users.job2=jobs2.name AND identifier = 'steam:$steamId_hex'";
            $query = $bdd->query($request);
            $data = $query->fetch();

            $this->firstname = $data['firstname'];
            $this->lastname = $data['lastname'];

            $this->sex = $data['sex'];

            $this->job = $data['label'];
            $this->job2 = $data['label2'];

            $this->money = $data['money'];
            $this->bank = $data['bank'];
        }

        public function getFirstname()
        {
            return $this->firstname;
        }

        public function getLastname()
        {
            return $this->lastname;
        }

        public function getFullname()
        {
            return $this->firstname.' '.$this->lastname;
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
        
        public function getJob()
        {
            return $this->job;
        }

        public function getJob2()
        {
            return $this->job2;
        }

        public function getMoney()
        {
            return $this->money;
        }

        public function getBank()
        {
            return $this->bank;
        }
    
    }