<?php

//табличка умножения
$a = 3;
$b = 3;
function tabl($a, $b){
	if (gettype($a) != "integer" || gettype($b) != "integer"){
        echo "Ошибка! Необходимы целые числа!";
    }else{
        echo "<table border=\"1px\"><tbody >";
        for($i = 1; $a >= $i; $i++) {
            echo "<tr>";
            for ($j = 0, $l = 0; $b > $l; $l++, $j+=$i){
                echo "<td width=\"150px\" align=\"center\" bgcolor=\"pink\">".($i+$j)."</td>";
            }
            echo "</tr>";
        }
        echo "</tbody></table>";
    }
};
tabl($a, $b);