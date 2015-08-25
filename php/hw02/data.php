<?php
require_once("connection.php");

$sql_products =  "SELECT `Категории товаров`.Title AS Category, `Товары`.Title, `Товары`.Mark, `Товары`.Price, `Товары`.Count
                  FROM `Товары`
                  LEFT JOIN `Категории товаров` ON `Товары`.Id_catalog = `Категории товаров`.Id";
$result = $mysql->query($sql_products);

$products = $result->fetch_all(MYSQL_ASSOC);

foreach($products as $product){

    echo "{$product['Category']}:<br/>{$product['Title']} {$product['Mark']} - {$product['Price']}.руб. ( {$product['Count']} шт.)<br/>";
}