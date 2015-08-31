<?php
    require_once "main.php";

    if($_GET) {
        //получаем имя редактируемого файла
        $name = $_GET["file"];
        // обрезаем расширение
        $short_name = substr($name, 0, strrpos($name, ".txt"));
        //переменная для содержимого файла
        $content = read($name);
    }
    if($_POST){
        // получаем названия файла
        $old_name = $_POST["old_name"];
        $new_name = preg_replace("/[^a-zA-Z0-9\s]/", "", $_POST["new_name"]);
        // получаем содержимое файла
        $new_content = $_POST["new_content"];
        //проверяем название
        if(!$new_name) {
            die("<h2 class='warning'>Введите название файла</h2>
                <a href='catalog.php'>Вернуться на главную</a></h3>");
        }else{
            rename(DIR.$old_name, DIR.$new_name.".txt");

            write($new_name, $new_content);
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: catalog.php");
        }
    }
?>

<html lang="ru" >
<head>
    <meta charset="UTF-8">
    <title>Редактирование файла</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <h3><a href="catalog.php">Вернуться на главную</a></h3>
    <h3><?php echo $name; ?></h3>
    <form action="edit.php" method="post">
        <input type="text" id="new_name" name="new_name" value="<?php echo $short_name; ?>"><br/>
        <textarea id="new_content" name="new_content" ><?php echo $content; ?></textarea><br/>
        <a href="edit.php"><button type="submit">Изменить файл</button></a>
        <br/><input style="visibility:hidden" id="old_name" name="old_name" value="<?php echo $name ?>">
    </form>
</div>

</body>