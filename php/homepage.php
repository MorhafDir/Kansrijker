<?php

include '../classes/db_config_class.php';
include '../classes/medewerker_class.php';

// create a new Db object
$db = new Db();
$pdo = $db->getPDO();

// Create a new Medewerker object
$medewerker = new Medewerker($db->getPDO());

session_start();

// Check if Medewerker is logged in
if (!isset($_SESSION['medewerker_id'])) {
    // Redirect to the login page
    header("Location: get_login.php");
    exit();
}

?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="kansrijker.css">
    <title>Kansrijker</title>
  </head>
  <style>
    *{
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}


header {
  width: 100%;
  height:80px;
  border:1px solid black;
  background-color:lightblue;
}


.logo {
  width: 20%;
  float: left;
  height: 100%;
  background: red;
}

.k-name {
  width: 65%;
  float: left;
  height: 100%;
  text-align: center;
}


.menu {
  width: 100%;
  height: 60px;
  background: blue;
  text-align:center;
  border:1px solid black;
}

.menu-wrapper {
  height: auto;
  border:1px solid red;
}


.context {
  width: 100%;
  height: 760px;
  border:1px solid black;
}


.context-wrapper {
  width: 100%;
  height: 100%;
  border:1px solid red;
}

  </style>
  <body>

    <header>
      <div class="logo">
      </div>

      <div class="k-name">
        <p>Jongeren Kansrijker</p>
      </div>
    </header>

    <div class="dropdown">
    <button class="dropbtn">Menu</button>
    <div class="dropdown-content">
        <a href="#">Check Activiteiten</a>
        <a href="#">Check Medewerker</a>
        <a href="#">Check Instituten</a>
        <a href="#">Check Jongeren</a>
        <a href="#">Uitloggen</a>
    </div>
</div>

      </div>



    </section>

    <section class="context">
      <div class="context-wrapper">

      </div>
    </section>

    <footer>
    </footer>

  </body>
</html>
