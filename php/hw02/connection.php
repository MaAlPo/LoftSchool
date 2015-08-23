<?php

try {
    $pdo = new PDO("mysql:dbname=loftschool;host=localhost", "root", "");
}catch(PDOException $ex){
    echo "Возникла ошибка соединения: ". $ex->getMessage();
    exit;
}
