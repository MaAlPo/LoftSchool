<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Удаление файла</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
        <?php
            $dir = "files/";
            $name = $_GET["file"];

            if(!unlink($dir.$name))echo "<h3>Удаление невозможно!</h3>";
            else echo "<h3>Файл удалён успешно!</h3>";

            echo "<h3><a href='main.php'>Вернуться на главную</a></h3>";
        ?>
    </div>

</body>