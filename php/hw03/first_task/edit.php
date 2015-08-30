<?php
    $dir = "files/";
    $name = $_GET["file"];
    $content = "";

    //открываем файл и получаем его содержимое в переменную content
    if(!$file_open = fopen($dir.$name, 'rw')){
        die("<h3>Сбой открытия файла $name</h3><br/>
        <a href='edit.php'>Попробовать ещё раз</a><br/>
        <a href='main.php'>Вернуться на главную</a>");
    }
    while(!feof($file_open)) {
        $buffer = fgets($file_open);
        if ($buffer) $content .= $buffer."<br/>";
    }
    fclose($dir.$file_open);

    if($_POST){
        //получаем старое имя файла
        $old_name = $_POST["old_name"];
        //получаем новое имя
        $new_name = preg_replace ("/[^a-zA-Z0-9\s]/", "", $_POST["file_name"]);
        //получаем новое содержимое
        $new_content = $_POST["file_content"];


        //открываем файл и записываем в него новые данные
        if(!$file_open = fopen($dir.$new_name, 'rw')){
            die("<h3>Сбой открытия файла $name</h3>");
            echo "<a href='edit.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
        }else{
            unlink($dir.$name);
        }
        if(!fwrite($file_open, $new_content)){
            die("<h2 class='warning'>Не удалось сделать запись в файл</h2>");
            echo "<a href='edit.php'>Попробовать ещё раз</a><br/><a href='main.php'>Вернуться на главную</a></h3>";
        }
        fclose($file_open);
        echo "<h3 style='text-align: center; color: blue'>Файл успешно создан!</h3>";
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
    <h3><a href="main.php">Вернуться на главную</a></h3>


    <h3><?php echo $name; ?></h3>
    <form action="edit.php" method="post">
        <input type="text" id="file_name" name="file_name" value="<?php echo $name; ?>"><br/>
        <textarea id="file_content" name="file_content" ><?php echo $content; ?></textarea><br/>
        <button type="submit"><a href="edit.php?old_name=<?php $name ?>">Изменить файл</a></button>
    </form>
</div>

</body>