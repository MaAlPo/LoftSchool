<html lang="ru" >
<head lang="ru">
    <meta charset="UTF-8">
    <title>Новый файл</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
<h3><a href="main.php">Вернуться на главную</a></h3>
    <form action="create_file.php" method="post">
        <h2 class="warning">Введите название и тип создаваемого файла</h2>
    <input type="text" id="file_name" name="file_name" placeholder="Укажите название файла"><br/>
    <input type="text" id="file_type" name="file_type" placeholder="Укажите расширение файла"><br/>
    <textarea id="file_content" name="file_content" ></textarea><br/>
    <button type="submit">Создать файл</button>
</form>
</div>

</body>
