<?php
$i = 10;
$j = 35;

function recur($i, $j){
    if($i > $j) return;
    if($i%2) echo $i.", ";
    $i++;
    recur($i, $j);
};
recur($i, $j);