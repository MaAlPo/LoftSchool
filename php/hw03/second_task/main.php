<?php
    require_once "connection.php";
    require_once "data.php";

    $query = "SHOW TABLES";
    $result = $mysql->query($query);
    $tables = $result->fetch_all();
echo $tables;


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
            <form action="data.php" method="post">
                <select class="tables">
                    <?php
                    echo "<option>Выберите таблицу</option>";
                        foreach($tables as $table){
                            echo "<option>".$table."</option>";                        }
                    ?>
                </select>
                <select class="formats">
                    <option>Выберите формат</option>
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