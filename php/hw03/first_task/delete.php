<?php
    require_once "main.php";
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
    <title>Удаление файла</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">

        <h3>Вы уверены, что хотите удалить файл</h3>
        <h3><?php echo $name; ?></h3>
        <form action="delete.php" method="post">
            <a href="delete.php"><button type="submit">да</button></a>
            <button type="reset"><a href="catalog.php">НЕТ</a></button>
            <br/><input style="visibility: hidden" id="del_file" name="del_file" value="<?php echo $name;?>">
        </form>

    </div>

</body>