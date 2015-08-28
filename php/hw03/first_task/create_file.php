<html lang="ru" >
<head lang="ru">
    <meta charset="UTF-8">
    <title>Новый файл</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>

<?php

$name = $_POST["file_name"];
$name = htmlentities($name);
$type = $_POST["file_type"];
$type = htmlentities($type);
$content = $_POST["file_content"];

if($name) {
    if ($type != "txt" && $type != "xml" && $type != "csv" && $type != "ini"){
        echo "<h3>Неверное расширение!!! Только txt, ini, xml, csv!<br/><a href='main.php'>Вернуться на главную</a><br/><a href='create.php'>Попробовать ещё раз</a></h3>";
        exit();
    }
    $file_name = $name . "." . $type;
    if (!$file_create = fopen("files/" . $file_name, "w")){
        die("Создать файл не удалось");
    }
    if($content && !fwrite($file_create, $content)){
        die("Сбой записи файла");
    }
    fclose($file_create);

    echo "<h3>Файл успешно создан!<br/><a href='main.php'>Вернуться на главную</a></h3>";
}else{
    echo "<h3>Неправильно задано имя!<br/>";
    unlink("files/".$file_name);
    echo "<a href='create.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
}
?>
</body>
</html>