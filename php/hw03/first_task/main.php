<?php

ini_set("display_errors", "off");
ini_set("log_errors", "on");
ini_set("error_log", __DIR__."/errors.log");

define("DIR", "files/");

//запись файла
function write($name, $content){
    //добавляем файлу расширение
    $file_name = $name . ".txt";
    $file_name = mb_convert_encoding($file_name, "utf-8");
    //открываем файл для записи
    if (!$file_open = fopen(DIR.$file_name, "w")){
        echo "<h2 class='warning'>Не удалось создать файл</h2>";
        exit;
    }
    //записываем контент в файл
    if($content){
        $content = strip_tags($content);
        if(!fwrite($file_open, $content)){
            echo "<h2 class='warning'>Не удалось сделать запись в файл</h2>";
            exit;
        }
    }
    //закрываем файл
    fclose($file_open);
}

//удаляем файл
function delete($name){
    if(!unlink(DIR.$name)){
        echo "<h3 class='warning'>Не удалось удалить файл</h3>";
        exit;
    }
    else {
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: catalog.php");
    }
}

//читаем файл
function read($name){
    //переменная для контента
    $content = "";
    //открываем файл для чтения
    if(!$file_open = fopen(DIR.$name, "r")){
        echo "<h3 class='warning'>Не удалось открыть файл</h3>";
        exit;
    }else{
        //получаем содержимое файла в переменную content и возвращаем ее

        if(!fgetss($file_open)){
            return false;
        }
        else{
            while (!feof($file_open)) {
                $buffer = fgetss($file_open);
                $content .= $buffer . "<br/>";
            }
        }
        fclose($file_open);

        return $content;
    }
}
