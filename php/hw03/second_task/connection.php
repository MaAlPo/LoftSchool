<?php

try {
    $conn = new mysqli('localhost', 'root', '', 'loftschool');
    $conn->query("SET NAMES UTF-8");
}catch(mysqli_sql_exception $ex){
    $date = new DateTime();
    file_put_contents("log", "Возникла ошибка в файле ".__FILE__." в строке "
        .__LINE__.PHP_EOL." Дата возникновения ошибки: ".$date->format("d.m.Y H:m:s")
        .PHP_EOL."Текст ошибки ['".$ex->getCode()."] - ".$ex->getMessage().PHP_EOL
        .str_repeat('-', 80).PHP_EOL, FILE_APPEND);
    exit;
}
