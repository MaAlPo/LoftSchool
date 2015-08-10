<?php
$i = 10;
$j = 19;

function opachki($i, $j){
    if($i > $j)
        return;
    if($i%2){
        echo $i.", ";
    }
    $i++;
    opachki($i, $j);
};
opachki($i, $j);