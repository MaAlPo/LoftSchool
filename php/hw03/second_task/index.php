<?php
require_once "main.php";

    //получаем список таблиц из БД для выпадающего меню
    $tables = get_tables($conn);


    if($_POST){
        $name = $_POST['tables'];
        $format = $_POST['formats'];
        $m_format = strtolower($format);
        if(in_array($name, $tables)){
            switch ($format){
                case "CSV":
                    create_csv($name, $conn);
                    break;
                case "JSON":
                    create_json($name, $conn);
                    break;
                case "XML":
                    create_xml($name, $conn);
                    break;
                default:
                    echo "<h3>Выберите формат файла!</h3>";
                    break;
            }
            //проверяем существование файла
            if(file_exists("files/".$m_format."/".$name.".".$m_format)){
                download_file($name, $m_format);
            }else{
                echo "<h3>Файла не существует!</h3>";
            }
        }else{
            echo "<h3>Выберите таблицу из списка!</h3>";
        }

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
            <form action="index.php" method="post">
                <select class="tables" id="tables" name="tables">
                    <?php
                    echo "<option selected='selected'>Выберите таблицу</option>";
                        foreach($tables as $table){
                            echo "<option>".$table."</option>";                        }
                    ?>
                </select>
                <select class="formats" id="formats" name="formats">
                    <option selected="selected">Выберите формат</option>
                    <option>CSV</option>
                    <option>JSON</option>
                    <option>XML</option>
                </select>
                <br/><button type="submit">Скачать</button><br/>
            </form>
        </div>
    </div>

</body>
</html>