<?php
/*
 * Функция,  получающая  1  параметр  (строку)
 * и  возвращающая TRUE   если  строка
 * является палиндромом, FALSE  в противном случае.
 */
$my_str = "qwrweq";

function func($my_str){
    $new_str = strtolower($my_str);
    $j = strlen($new_str) - 1;
    for($i = 0; $i <= $j; $i++, $j--){
        if($new_str[$i] != $new_str[$j]) return false;
    }
    return true;
};
func($my_str);