<?php
$name = $_GET["file"];

?>

<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title><?php $name ?></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">

    <?php

    echo "<h1>$name</h1>";
    $file_open = fopen('files/'.$name, 'r');
    if(!$file_open){
        echo "<h3>сбой открыти файла</h3>";
    }

    echo "<p class='text'>";

    while(!feof($file_open)){
        $buffer = fgets($file_open);
        if(!$buffer) echo "<p style='color:blue;'>Данный файл пуст!</p>";
        echo $buffer."<br/>";
    }
    fclose($file_open);
    echo "</p>";

    echo "<h3><a href='main.php'>Вернуться на главную</a></h3>";
    ?>

</div>
</body>