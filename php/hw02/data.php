<?php
require_once("connection.php");

$sql_products = "SELECT * FROM Товары";
$result = $mysql->query($sql_products);

$products = $result->fetch_all(MYSQL_ASSOC);

foreach($products as $product){
    echo "{$product['Title']}<br/>";
}