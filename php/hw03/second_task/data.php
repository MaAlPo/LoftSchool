<?php

//получаем названия таблиц из БД
function get_tables($mysql){
    $query = "SHOW TABLES";
    $result = $mysql->query($query);
    $tables = $result->fetch_all(MYSQL_NUM);
    return $tables;
}

//получаем названия столбцов из таблиц БД
function get_fields($table, $mysql){
    $query = "SHOW COLUMNS FROM $table";
    $result = $mysql->query($query);
    $fields = $result->fetch_all(MYSQL_NUM);
    $data = array();
    foreach($fields as $field){
        $data[] = $field[0];
    }
    return $data;
}

//получаем данные из БД
function get_data($table, $format, $mysql){
    //получаем данные из выбранной таблицы
    $query = "SELECT * FROM $table";
    $result = $mysql->query($query);
    $data = $result->fetch_all(MYSQL_ASSOC);

    //проверка формата для вызова соответствующей функции генерирования файла
    switch ($format){
        case "CSV":
            create_csv($table, $data, $mysql);
            break;
        case "JSON":
            create_json($table, $data, $mysql);
            break;
        case "XML":
            create_xml($table, $data, $mysql);
            break;
        default:
            echo "<h3>Выберите нужный формат из списка!</h3>";
    }
}

//создание файла CSV
function create_csv($name, $data, $mysql){
    $csv = fopen("files/csv/".$name.".csv", "w");
    $fields = get_fields($name, $mysql);
    fputcsv($csv, $fields, ";");
    foreach ($data as $value){
        fputcsv($csv, $value, ";");
    }
    fclose($csv);
}

//создание файла JSON
function create_json($name, $data){
    header("Content-Type: application/json");
    echo json_encode($data);
    //->save('files/json/'.$name);
}

//создание файла XML
function create_xml($name, $data, $mysql){
    //создаем объект документа
    $dom = new DOMDocument('1.0', 'UTF-8');

    //создаем корневой элемент по имени таблицы
    $table = $dom->createElement($name);
    $dom->appendChild($table);

    $fields = get_fields($name, $mysql);
        $entity = $dom->createElement("entity");
            foreach($fields as $field){
                $field=$dom->createElement($field);
                $entity->appendChild($field);
            }
    $dom->save('files/xml/'.$name);
}
