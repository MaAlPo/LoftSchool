<?php
    require_once "main.php";

    if($_POST){
        // получаем название файла
        $name = preg_replace("/[^a-zA-ZА-Яа-я0-9\s.]/", "", $_POST["file_name"]);
        // получаем содержимое файла
        $content = $_POST["file_content"];
        //проверяем название
        if(!$name) {
            die("<h2 class='warning'>Введите название создаваемого файла</h2>
            <h3><a href='catalog.php'>Вернуться на главную</a></h3>");
        }else{
            //создаем и записываем в файл
            write($name, $content);
            echo "<h3 class='success'>Файл успешно создан!</h3>";
        }
    }
?>

<html lang="ru" >
<head>
    <meta charset="UTF-8">
    <title>Новый файл</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
    <h3><a href="catalog.php">Вернуться на главную</a></h3>
        <form action="create.php" method="post">

            <input type="text" id="file_name" name="file_name" placeholder="Укажите название файла на английском языке"><br/>
            <textarea id="file_content" name="file_content" ></textarea><br/>
            <button type="submit">Создать файл</button>
        </form>
    </div>

</body>
