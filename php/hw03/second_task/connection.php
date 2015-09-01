<?php

$mysql = new mysqli("localhost", "root", "", "loft");

if(mysqli_connect_errno()){
    die(mysqli_connect_error());
}

$sql = "SET NAMES 'UTF-8'";
$mysql->query($sql);