<?php
    require_once "main.php";
    //получаем массив файлов из папки
    $files = array_diff(scandir(DIR), array(".", ".."));
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
            <a href="create.php"><button>Создать новый файл</button></a>

            <?php
                if($files) {
                    echo "<h3>У вас есть следующие файлы:</h3>";

                    echo "<div class='list'>";
                    echo "<table><thead><tr><th>Название</th><th>Действие</th></tr></thead>";
                    echo "<tbody>";
                    foreach ($files as $file) {
                        $short_name = pathinfo($file, PATHINFO_FILENAME);
                        $short_name = iconv("cp1251", "utf-8", $short_name);
                        echo "<tr><td><a class='name' href='read.php?file=$file'>$short_name</a></td>
                                <td><a class='action' href='edit.php?file=$file'>Редактировать</a>
                                <a class='action' href='delete.php?file=$file'>Удалить</a></td></tr>";
                    }
                    echo "</tbody>";
                    echo "</table>";
                    echo "</div>";
                }else{
                    echo "<h3>Файлов не обнаружено</h3>";
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
