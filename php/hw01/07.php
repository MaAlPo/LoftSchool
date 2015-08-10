<?php

$my_str = "qwrweq";

function func($my_str){
    $j = strlen($my_str) - 1;
    for($i = 0; $i <= $j; $i++, $j--){
        if($my_str[$i] != $my_str[$j]) return false;
    }
    return true;
};
func($my_str);