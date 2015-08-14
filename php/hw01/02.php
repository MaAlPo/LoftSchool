<?php
/*
 * 2. Функция,  принимающая  2  параметра    массив
 * чисел  и  строку,  обозначающую арифметическое  действие,
 * которое  нужно  выполнить  со  всеми  элементами
 * массива. Функция должна выводить результат на экран.
 */
$numbers = array(1,2,3,4,5);
$my_act = "-";

//в зависимости от значения второго параметра проходим по массиву с выполнением данного арифметического действия 
function opachki($numbers, $my_act){
    $arr_len = count($numbers);
    $result = $numbers[0];
    switch($my_act){
		case "+":
			for($i = 1; $i < $arr_len; $i++){
        		$result += $numbers[$i];
	        }
	       	break;
	    case "*":
	    	for($i = 1; $i < $arr_len; $i++){
                $result *= $numbers[$i];
	        }
	        break;
	    case "-":
	    	for($i = 1; $i < $arr_len; $i++){
                $result -= $numbers[$i];
	       	}
	       	break;
	    case "/":
	    	for($i = 1; $i < $arr_len; $i++){
                $result /= $numbers[$i];
	       	}
	       	break;
	    case "%":
	        for($i = 1; $i < $arr_len; $i++) {
                $result %= $numbers[$i];
            }
	       	break;
	    default:
			echo "Ошибочка вышла!";
	}
    echo $result;
};
opachki($numbers, $my_act);