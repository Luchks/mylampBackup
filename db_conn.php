<?php
    class singleton{
        private static $instance = null;
        private $conn;
        private $sname="db";
        private $unmae="lamp_docker";
        private $password="password";
        private $db_name="lamp_docker";
        private function __construct(){
            $this->conn = mysqli_connect($this->sname, $this->unmae,$this->password,$this->db_name);
        }
        public static function getInstance():singleton{
            if(self::$instance==null){
                self::$instance = new singleton();
            }
            return self::$instance;
        }
        public function getConnection(){
            return $this->conn;
        }
    }

    $conn = singleton::getInstance()->getConnection();

    if(!$conn){
        echo "Connection failed!";
    }
