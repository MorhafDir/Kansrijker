<?php

class Db
{
    private $host = "localhost";
    private $dbName = "kansrijker";
    private $user = "postgres";
    private $pass = "Morhaf578?";
    private $port = 5432;
    private $PDO;

    public function __construct()
    {
        try {
            $this->PDO = new PDO("pgsql:host=$this->host;port=$this->port;dbname=$this->dbName", $this->user, $this->pass);
            $this->PDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo $e->getMessage();
            echo"<br />Verbinding NIET gemaakt";
        }
    }

    public function getPDO()
    {
        return $this->PDO;
    }
}

?>
