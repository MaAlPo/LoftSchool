<?php
    require_once "main.php";
    //получаем имя читаемого файла
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
        echo "<p class='text'>".read($name)."</p>";
        echo "<h3><a href='catalog.php'>Вернуться на главную</a></h3>";
    ?>

</div>
</body>