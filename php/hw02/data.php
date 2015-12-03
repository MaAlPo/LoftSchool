<?php
require_once "connection.php";

$sql_products =  "SELECT `Category`.Title AS Category, `Company`.Title, `Items`.Mark, `Items`.Price, `Items`.Count
                  FROM `Items`
                  LEFT JOIN `Category` ON `Items`.Id_catalog = `Category`.Id
                  LEFT JOIN `Company` ON `Items`.Id_company = `Company`.Id_company";

$result = $mysql->query($sql_products);
$products = $result->fetch_all(MYSQL_ASSOC);
foreach($products as $product){

    echo "{$product['Category']}:<br/>{$product['Title']} {$product['Mark']} - {$product['Price']}.руб. ( {$product['Count']} шт.)<br/>";
}