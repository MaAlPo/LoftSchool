<?php

//табличка умножения
$a = 3;
$b = 6;
function opachki($a, $b){
	if (gettype($a) != "integer" || gettype($b) != "integer"){
        echo "Ошибка! Необходимы целые числа!";
    }else{
        for($i = 1; $a >= $i; $i++) {
            for ($j = 0, $l = 0; $b > $l; $l++, $j+=$i){
                echo $i+$j."   ";
            }
            echo "<br/>";
        }
    }
};
opachki($a, $b);