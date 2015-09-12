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
        $new_name = preg_replace("/[^0-9A-Za-z\s.]/", "", $_POST["new_name"]);
        // получаем содержимое файла
        $new_content = $_POST["new_content"];
        //проверяем название
        if(!$new_name) {
            echo "<h3 class='warning'>Введите корректное название файла!</h3>";
        }else{
            rename(DIR.$old_name, DIR.$new_name.".txt");
            write($new_name, $new_content);
        }
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: index.php");
    }
?>

<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1025"> <!--wrapper + 20 -->
    <!--<meta name="viewport" content="device-width"> responsive -->
    <title>Catalog</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="http://ajax.aspnetcdn.com/ajax/modernizr/modernizr-2.8.3.js"></script>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <a href="catalog.php"><button>Вернуться на главную</button></a>

        <h3><?php echo $short_name; ?></h3>

            <form action="edit.php" method="post">
                <input type="text" id="new_name" name="new_name" value="<?php echo $short_name; ?>"><br/>
                <textarea id="new_content" name="new_content" ><?php echo $content; ?></textarea><br/>
                <a href="edit.php"><button type="submit">Изменить файл</button></a>
                <br/><input style="visibility:hidden" id="old_name" name="old_name" value="<?php echo $name; ?>">
            </form>

    </div> <!--container-->
</div>   <!-- wrapper  -->
<div class="empty"></div>
<footer></footer>

<script src="js/jquery-1.11.3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
