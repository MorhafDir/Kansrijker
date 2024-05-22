<?php

include '../classes/db_config_class.php';
include '../classes/medewerker_class.php';


// create a new Db object
$db = new Db();
$pdo = $db->getPDO();

// Create a new Medewerker object
$medewerker = new Medewerker($db->getPDO());

?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form action="add_login.php" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
