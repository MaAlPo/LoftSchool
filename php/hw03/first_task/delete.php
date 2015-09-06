<?php
    require_once ("main.php");
    //получаем имя удаляемого файла
    $name = $_GET["file"];

    if($_POST){
        $del_name = $_POST["del_file"];
        delete($del_name);
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
            <h3>Вы уверены, что хотите удалить файл</h3>
            <h3><?php echo $name; ?></h3>

            <form action="delete.php" method="post">
                <a href="delete.php"><button type="submit">да</button></a>
                <a href="catalog.php"><button type="button">НЕТ</button></a>
                <br/><input style="visibility: hidden" id="del_file" name="del_file" value="<?php echo $name; ?>">
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