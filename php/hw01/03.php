<?php
/*
 * 3. Функция,  принимающая  переменное  число
 * аргументов,  но  первым  аргументов обязательно
 * должна  быть  строка,  обозначающее
 * арифметическое  действие, которое необходимо
 * выполнить со всеми передаваемыми аргументами.
 */
//супер-функция с переменным числом параметров!
function opachki(){
	$parameters = func_get_args();

    if(count($parameters) < 3){
        echo "Для выполнения функции передано недостаточно параметров. Передайте не менее 3 параметров.";
    }
    $result = $parameters[1];

    switch($parameters[0]){
        case "+":
            for($i = 2; $i < count($parameters); $i++){
                $result += $parameters[$i];
            }
            break;
        case "-":
            for($i = 2; $i < count($parameters); $i++){
                $result -= $parameters[$i];
            }
            break;
        case "*":
            for($i = 2; $i < count($parameters); $i++){
                $result *= $parameters[$i];
            }
           break;
        case "/":
            for($i = 2; $i < count($parameters); $i++){
                $result /= $parameters[$i];
            }
           break;
        case "%":
            for($i = 2; $i < count($parameters); $i++){
                $result %= $parameters[$i];
            }
           break;
        default:
           echo "Первым параметром должен быть символ арифметического действия!";
    }
    echo $result;
};
opachki("*", 1,2,3);