<?php

$numbers = array(1,2,3,4,5);
$my_act = "*";

//в зависимости от значения второго параметра проходим по массиву с выполнением данного арифметического действия 
function opachki($numbers, $my_act){
    $arr_len = count($numbers);
    switch($my_act){
		case "+":
			for($i = 0; $i < $arr_len; $i++){
        		for($k = $i + 1; $k < $arr_len; $k++){
					echo ($numbers[$i]+$numbers[$k])."<br/>";
	           	}
	        }
	       	break;
	    case "*":
	    	for($i = 0; $i < $arr_len; $i++){
        		for($k = $i + 1; $k < $arr_len; $k++){
	        		echo ($numbers[$i]*$numbers[$k])."<br/>";
	        	}
	        }
	        break;
	    case "-":
	    	for($i = 0; $i < $arr_len; $i++){
        		for($k = $i + 1; $k < $arr_len; $k++){
	       			echo ($numbers[$i]-$numbers[$k])."<br/>";
	       		}
	       	}
	       	for($i = (--$arr_len); $i >= 0; $i--){
        		for($k = $i - 1; $k > 0; $k--){
	       			echo ($numbers[$i]-$numbers[$k])."<br/>";
	       		}
	       	}		
	       	break;
	    case "/":
	    	for($i = 0; $i < $arr_len; $i++){
        		for($k = $i + 1; $k < $arr_len; $k++){
	       			echo ($numbers[$i]/$numbers[$k])."<br/>";
	       		}
	       	}
	       	for($i = (--$arr_len); $i >= 0; $i--){
        		for($k = $i - 1; $k > 0; $k--){
	       			echo ($numbers[$i]/$numbers[$k])."<br/>";
	       		}
	       	}		
	       	break;
	    case "%":
	        for($i = 0; $i < $arr_len; $i++){
        		for($k = $i + 1; $k < $arr_len; $k++){
	       			echo ($numbers[$i]%$numbers[$k])."<br/>";
	       		}
	       	}
	       	for($i = $arr_len; $i >= 0; $i--){
        		for($k = $i - 1; $k < 0; $k--){
	       			echo ($numbers[$i]%$numbers[$k])."<br/>";
	       		}
	       	}
	       	break;
	    default:
			echo "Ошибочка вышла!";
	}
};
opachki($numbers, $my_act);