<?php
    class Annonce {

        private $data = array();
        private $type;
        private $title;
        private $desc;
        private $img;
        private $date;
        public static $bdd;

        public function __construct($data){

            $this->type=$data["type"];  
            $this->title=$data["title"];  
            $this->desc=$data["content"];  
            $this->img=$data["url_img"];  
            $this->date=$data["date"];  

        }

        public function afficherAnnonce(){

            echo '
            <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">
                <div class="card hoverable">
                    <img class="card-img-top" src="'.$this->img.'" alt="Card image cap">
                    <div class="card-body">
                        <p class="card-title text-muted text-uppercase font-small mt-1 mb-3">'.$this->type.'</p>
                        <h5 class="blue-text pb-2"><strong>'.$this->title.'</strong></h5>
                        <p class="text-muted text-uppercase font-small mt-1 mb-3">'.$this->date.'</p>
                        <p class="mb-2">'.$this->desc.'</p>
                    </div>
                </div>
            </div>
            ';   
            
            return $this->data;
        }

    }