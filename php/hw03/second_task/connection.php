<?php

ini_set("display_errors", "off");
ini_set("log_errors", "on");
ini_set("error_log", __DIR__."/errors.log");

try {
    $conn = new mysqli('localhost', 'root', '', 'loftschool');
    $conn->query("SET NAMES UTF-8");
}catch(mysqli_sql_exception $ex){
    echo "<h3>Произошла ошибка!</h3>";
    exit;
}
