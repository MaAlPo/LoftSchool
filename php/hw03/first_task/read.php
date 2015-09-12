<?php
    require_once "main.php";
    //получаем имя читаемого файла
    $name = $_GET["file"];
    //получаем содержимое читаемого файла
    $content = nl2br(read($name));
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

            <h3><?php echo $name; ?></h3>

                <?php
                if(!read($name)){
                    echo "<h3 class='info'>Файл пуст!</h3>";
                }else{
                    echo "<p class='text'>".$content."</p>";
                }
                ?>

        </div> <!--container-->
    </div>   <!-- wrapper  -->
    <div class="empty"></div>
    <footer></footer>

    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>