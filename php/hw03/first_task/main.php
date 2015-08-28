
<!doctype html>
<html lang="ru">
<head lang="ru">
    <meta charset="utf-8">
    <title>Файлы</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <h3><a href="create.php">Создать новый файл</a></h3>

    <?php
    $files = scandir("files");
    $files = array_diff($files, array(".", ".."));

    if($files) {
        echo "У вас есть следующие файлы: <ol>";
        foreach ($files as $file) {
            echo "<li><a href='read.php?file={$file}'>$file</a><span ><a href='edit.php?file={$file}'>Редактировать</a>\t<a href='delete.php?file={$file}'>Удалить</a></span>";
        }
        echo "</ol>";
    }else{
        echo "<span>Файлов не обнаружено</span>";
    }
    ?>
</div>
</body>