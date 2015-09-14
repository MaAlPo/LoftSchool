<?php

require_once "connection.php";
define("DIR", 'files/');

//получаем массив с названиями таблиц из БД
function get_tables($conn){
    $tables = array();
    $query = "SHOW TABLES";
    $result = $conn->query($query)->fetch_all(MYSQL_NUM);

    foreach($result as $table){
        $tables[] = $table[0];
    }
    return $tables;
}

//получаем названия столбцов из таблиц БД
function get_fields($table, $conn){
    $data = array();
    $query = "SHOW COLUMNS FROM $table";
    $result = $conn->query($query)->fetch_all(MYSQL_NUM);

    foreach($result as $field){
        $data[] = $field[0];
    }
    return $data;
}

//получаем данные из БД для json
function get_data_json($table, $conn){
    $query = "SELECT * FROM $table";
    $result = $conn->query($query)->fetch_all(MYSQL_ASSOC);
    return $result;
}
//получаем данные из БД для csv и xml
function get_data($table, $conn){
    $query = "SELECT * FROM $table";
    $result = $conn->query($query)->fetch_all(MYSQL_NUM);
    return $result;
}

//создание файла CSV
function create_csv($table, $conn){
    $data_from_table = get_data($table, $conn);
    $csv = fopen("files/csv/".$table.".csv", "w+");
    $fields = get_fields($table, $conn);
    fputcsv($csv, $fields, ";");

    foreach ($data_from_table as $value){
        fputcsv($csv, $value, ";");
    }
    fclose($csv);
}

//создание файла JSON
function create_json($table, $conn){
    $data_from_table = get_data_json($table, $conn);
    $json = fopen("files/json/".$table.".json", "w+");
    fwrite($json, json_encode($data_from_table));

    fclose($json);
}

//создание файла XML
function create_xml($table, $conn){

    //получаем названия столбцов
    $fields = get_fields($table, $conn);

    //получаем данные
    $data_from_table = get_data($table, $conn);

    //создаем объект документа
    $dom = new DOMDocument('1.0', 'UTF-8');

    //создаем корневой элемент по имени таблицы
    $catalog = $dom->createElement("catalog");
    $dom->appendChild($catalog);

    //создаем контейнер для обектов
    $entities = $dom->createElement("entities");
    $catalog->appendChild($entities);

    //создаем и добавляем объекты
    foreach($data_from_table as $value){
        $entity = $dom->createElement("entity");
        $attribute_id = $dom->createAttribute('id');
        $attribute_id->value = $value[0];
        $entity->appendChild($attribute_id);

        for($k = 0, $i = count($fields); $k < $i; $k++ ){
            $name_tag = $dom->createElement($fields[$k], $value[$k]);
            $entity->appendChild($name_tag);
        }

        $entities->appendChild($entity);
    }

    //сохраняем документ
    $dom->save("files/xml/".$table.".xml");
}

//скачиваем файл
function download_file($name){
    header("Content-Disposition: attachment; filename=".$name."");
    header("Content-Type: application/x-force-download; name=".$name."");
    header("Content-Length: ".filesize($name));
    readfile($name);
    exit;
}