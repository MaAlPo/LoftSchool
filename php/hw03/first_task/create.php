<?php
    require_once "main.php";
?>

<html lang="ru">
<head>
    <meta charset="utf-8">
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

            <?php
            if($_POST){
                // получаем название файла
                $name = preg_replace("/[^0-9A-Za-zА-Яа-я\s.]/", "", $_POST["file_name"]);
                echo $name;
                // получаем содержимое файла
                $content = $_POST["file_content"];
                //проверяем название
                if(!$name) {
                    echo "<h3 class='warning'>Введите корректное название файла!</h3>";
                }else{
                    //создаем и записываем в файл
//                    write($name, $content);
                    echo "<h3 class='success'>Файл успешно создан!</h3>";
                }
            }
            ?>

            <form action="create.php" method="post">

                    <input type="text" id="file_name" name="file_name" placeholder="Укажите название файла на английском языке"><br/>
                    <textarea id="file_content" name="file_content" ></textarea><br/>
                    <button type="submit">Создать файл</button>
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