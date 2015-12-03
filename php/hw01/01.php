<?php
/*
 * 1. Функция,  принимающая  массив  строк  и  выводящая  каждую
 * строку  в  отдельном параграфе.
 */
$my_fruits = array("apple", "orange", "banana", "pinapple", "mellon");

do_it($my_fruits);

function do_it($my_fruits){
	foreach ($my_fruits as $fruit) {
		echo "<p>$fruit<p/>";
	}
};

