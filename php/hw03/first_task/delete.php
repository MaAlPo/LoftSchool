<?php
    $name = (string)$_GET["file"];
?>

<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Удаление файла</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <h3>Вы действительно хотите удалить файл</h3>
    <?php

    echo "<h1>$name</h1>";
    echo "<button><a href='delete_file.php?file={$name}'>да</button><button><a href='main.php?'>НЕТ</button>";
?>
</div>

</body>