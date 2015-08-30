<?php
    $dir = "files/";
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
        $file_open = fopen($dir.$name, 'r');
        if(!$file_open){
            echo "<h3>сбой открыти файла</h3>";
            echo "<h3><a href='main.php'>Вернуться на главную</a></h3>";
        }

        //проверяем содержимое файла
        if(!file_get_contents($dir.$name)) {
            echo "<p class='empty'>Данный файл пуст!</p>";
        }else {
        //выводим содержимое файла построчно
            echo "<p class='text'>";
            while (!feof($file_open)) {
                $buffer = fgets($file_open);
                echo $buffer . "<br/>";
            }
            fclose($file_open);
            echo "</p>";
        }
        echo "<h3><a href='main.php'>Вернуться на главную</a></h3>";
    ?>

</div>
</body>