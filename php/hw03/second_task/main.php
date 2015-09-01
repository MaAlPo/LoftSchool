<?php
require_once "data.php";
require_once "connection.php";

    //получаем список таблиц из БД
    $tables = get_tables($mysql);

    if($_POST){
        $name = $_POST['tables'];
        $format = $_POST['formats'];
        get_data($name, $format, $mysql);
    }
?>

<html lang="ru">
<head>
    <meta charset="UTF-8" />
    <title>Работа с БД</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <form action="main.php" method="post">
                <select class="tables" id="tables" name="tables">
                    <?php
                    echo "<option selected='selected'>Выберите таблицу</option>";
                        foreach($tables as $table){
                            echo "<option>".$table[0]."</option>";                        }
                    ?>
                </select>
                <select class="formats" id="formats" name="formats">
                    <option selected="selected">Выберите формат</option>
                    <option>CSV</option>
                    <option>JSON</option>
                    <option>XML</option>
                </select>
                <br/><button type="submit">Показать</button><br/>
            </form>
        </div>
    </div>

</body>
</html>