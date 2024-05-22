<?php

class Medewerker
{
    private $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

    // Method to authenticate a Medewerker
    public function authenticate($username, $password)
    {
        // Prepare the SQL query
        $query = $this->db->prepare("SELECT * FROM Medewerker WHERE medewerker_user = :username");

        // Bind parameters
        $query->bindParam(':username', $username, PDO::PARAM_STR);

        // Execute the query
        $query->execute();

        // Fetch the Medewerker record
        $medewerker = $query->fetch(PDO::FETCH_ASSOC);

        // Check if a Medewerker was found and if the password matches
        if ($medewerker && password_verify($password, $medewerker['medewerker_pass'])) {
            return $medewerker; // Successful login, return Medewerker data
        }

        return false; // Authentication failed
    }
}

?>
