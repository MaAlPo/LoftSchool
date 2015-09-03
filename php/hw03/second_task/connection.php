<?php

    $conn = new mysqli('localhost', 'root', '', 'loft');

if(mysqli_connect_errno()){
    exit(mysqli_connect_error());
}
$query = "SET NAMES UTF-8";
$conn->query($query);