<?php
    $dir = "files/";
    if($_POST){

        $name = preg_replace ("/[^a-zA-Z0-9\s]/", "", $_POST["file_name"]); // получаем название файла

        $content = $_POST["file_content"]; // получаем содержимое файла

        //проверяем название
        if(!$name) {
            echo "<h2 class='warning'>Введите название создаваемого файла</h2>";
            echo "<a href='create.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
            die();
        }

        $file_name = $name . ".txt";
        if (!$file_create = fopen($dir.$file_name, "w")){
            die("<h2 class='warning'>Создать файл не удалось</h2>");
            echo "<a href='create.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
        }
        if(!fwrite($file_create, $content)){
            die("<h2 class='warning'>Не удалось сделать запись в файл</h2>");
            echo "<a href='create.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
        }
        fclose($file_create);
        echo "<h3 style='text-align: center; color: blue'>Файл успешно создан!</h3>";
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
    <h3><a href="main.php">Вернуться на главную</a></h3>
        <form action="create.php" method="post">

            <input type="text" id="file_name" name="file_name" placeholder="Укажите название файла на английском языке"><br/>
            <textarea id="file_content" name="file_content" ></textarea><br/>
            <button type="submit">Создать файл</button>
        </form>
    </div>

</body>
