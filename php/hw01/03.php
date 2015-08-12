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

    switch($parameters[0]){
        case "+":
            for($i = 1; $i < count($parameters); $i++){
                for($k = $i + 1; $k < count($parameters); $k++){
                    echo ($parameters[$i]+$parameters[$k])."<br/>";
                }
            }
            break;
        case "-":
            for($i = 1; $i < count($parameters); $i++){
                for($k = $i + 1; $k < count($parameters); $k++){
                    echo ($parameters[$i]-$parameters[$k])."<br/>";
                }
            }
            for($i = (count($parameters)-1); $i >= 0; $i--){
                for($k = $i - 1; $k > 0; $k--){
                    echo ($parameters[$i]-$parameters[$k])."<br/>";
                }
            }
            break;
        case "*":
            for($i = 1; $i < count($parameters); $i++){
                for($k = $i + 1; $k < count($parameters); $k++){
                    echo ($parameters[$i]*$parameters[$k])."<br/>";
                }
            }
           break;
        case "/":
            for($i = 1; $i < count($parameters); $i++){
                for($k = $i + 1; $k < count($parameters); $k++){
                    echo ($parameters[$i]/$parameters[$k])."<br/>";
                }
            }
            for($i = (count($parameters)-1); $i >= 0; $i--){
                for($k = $i - 1; $k > 0; $k--){
                    echo ($parameters[$i]/$parameters[$k])."<br/>";
                }
            }
           break;
        case "%":
            for($i = 1; $i < count($parameters); $i++){
                for($k = $i + 1; $k < count($parameters); $k++){
                    echo ($parameters[$i]%$parameters[$k])."<br/>";
                }
            }
            for($i = (count($parameters)-1); $i >= 0; $i--){
                for($k = $i - 1; $k > 0; $k--){
                    echo ($parameters[$i]%$parameters[$k])."<br/>";
                }
            }
           break;
        default:
           echo "Первым параметром должен быть символ арифметического действия!";
    }
};
opachki("-", 1,2,3);