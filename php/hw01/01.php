<?php

$my_fruits = array("apple", "orange", "banana", "pinapple", "mellon");

function do_it($my_fruits){
	foreach ($my_fruits as $fruit) {
		echo "<p>$fruit<p/>";
	}
};
do_it($my_fruits);
