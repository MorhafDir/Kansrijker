<?php

$plain_password = '1';
$hashed_password = password_hash($plain_password, PASSWORD_DEFAULT);

echo $hashed_password;
?>
