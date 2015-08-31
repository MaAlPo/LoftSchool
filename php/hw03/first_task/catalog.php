<?php
    require_once "main.php";
    //получаем массив файлов из папки
    $files = array_diff(scandir(DIR), array(".", ".."));
?>

<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Каталог</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <h3><a href="create.php">Создать новый файл</a></h3>

    <?php
        if($files) {
            echo "<h3>У вас есть следующие файлы:</h3>";
            echo "<div class='list''>";
            foreach ($files as $file) {
                echo "<a class='success' href='read.php?file=$file'>$file</a>
                          <span><a href='edit.php?file=$file'>Редактировать</a></span>
                          <span><a href='delete.php?file=$file'>Удалить</a></span><br/>";
            }
            echo "</div>";
        }else{
            echo "<h3>Файлов не обнаружено</h3>";
        }
    ?>
</div>
</body>
