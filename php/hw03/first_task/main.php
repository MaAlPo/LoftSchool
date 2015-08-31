<?php

define("DIR", "files/");

//запись файла
function write($name, $content){
    //добавляем файлу расширение
    $file_name = $name . ".txt";
    //открываем файл для записи
    if (!$file_open = fopen(DIR.$file_name, "w")){
        die("<h2 class='warning'>Не удалось создать файл</h2>
        <h3><a href='catalog.php'>Вернуться на главную</a></h3>");
    }
    //записываем контент в файл
    if($content){
        $content = strip_tags($content);
        if(!fwrite($file_open, $content)){
            die("<h2 class='warning'>Не удалось сделать запись в файл</h2>
            <h3><a href='catalog.php'>Вернуться на главную</a></h3>");
        }
    }
    //закрываем файл
    fclose($file_open);
}

//удаляем файл
function delete($name){
    if(!unlink(DIR.$name)){
        die("<h2 class='warning'>Не удалось удалить файл</h2>
        <h3><a href='catalog.php'>Вернуться на главную</a></h3>");
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
    if (!$file_open = fopen(DIR.$name, "r")){
        die("<h2 class='warning'>Не удалось открыть файл</h2>
        <h3><a href='catalog.php'>Вернуться на главную</a></h3>");
    }
    //проверяем содержимое файла
    if(!file_get_contents(DIR.$name)) {
        echo "<p class='empty'>Данный файл пуст!</p>";
    }else {
        //получаем содержимое файла в переменную content и возвращаем ее
        while (!feof($file_open)) {
            $buffer = fgets($file_open);
            $content .= $buffer . "<br/>";
        }
    }
    fclose($file_open);
    return $content;
}
