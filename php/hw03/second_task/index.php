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
                    $file = DIR.$m_format."/".$name.".".$m_format;
                    if(file_exists($file)){
                        download_file($file);
                    }
                }else{
                    echo "<h3>Выберите таблицу из списка!</h3>";
                }
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

            <form action="index.php" method="post">
                <select class="tables" id="tables" name="tables">
                    <?php
                    echo "<option selected='selected'>Выберите таблицу</option>";
                        foreach($tables as $table){
                            echo "<option>".$table."</option>";
                        }
                    ?>

                </select>
                <select class="formats" id="formats" name="formats">
                    <option selected="selected">Выберите формат</option>
                    <option>CSV</option>
                    <option>JSON</option>
                    <option>XML</option>
                </select>
                <br/>
                <button type="submit">Скачать</button>
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
