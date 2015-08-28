<?php

$name = $_GET["file"];
$file_open = fopen("files/".$name, 'rw');
while(!feof($file_open)) {
    $buffer = fgets($file_open);
    if ($buffer) $content += "$buffer<br/>";
}
?>

<html lang="ru" >
<head lang="ru">
    <meta charset="UTF-8">
    <title>Редактирование файла</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
    <h3><a href="main.php">Вернуться на главную</a></h3>


    <h3><?php {$name;} ?></h3>
    <form action="edit_file.php" method="post">
        <h2 class="warning">Введите название и тип создаваемого файла</h2>
        <input type="text" id="file_name" name="file_name" value="<?php $name ?>"><br/>
        <textarea id="file_content" name="file_content" ><?php $content ?></textarea><br/>
        <button type="submit">Изменить файл</button>
    </form>
</div>

</body>