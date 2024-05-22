<?php

include '../classes/db_config_class.php';
include '../classes/medewerker_class.php';

// create a new Db object
$db = new Db();
$pdo = $db->getPDO();

// Create a new Medewerker object
$medewerker = new Medewerker($db->getPDO());    

// Start a session
session_start();

// After successful authentication, store Medewerker data in the session
$_SESSION['medewerker_id'] = $authenticatedMedewerker['medewerker_id'];
$_SESSION['medewerker_user'] = $authenticatedMedewerker['medewerker_user'];



if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve username and password from the form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Attempt to authenticate the Medewerker
    $authenticatedMedewerker = $medewerker->authenticate($username, $password);

    if ($authenticatedMedewerker) {
        // Successful login
        



        echo "Welcome, " . $authenticatedMedewerker['medewerker_user'];
    } else {
        // Authentication failed
        echo "Login failed. Please check your credentials.";
    }
}
?>
