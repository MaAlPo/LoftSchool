<?php
require_once("connection.php");

$sql = "SELECT Name, Lastname FROM Пользователи";
$rs = $pdo->query($sql);

$rows = $rs->fetchAll(PDO::FETCH_OBJ);
foreach($rows as $row){
    echo "{$row->Name} {$row->Lastname}<br/>";
}