<?php
$my_arr = array(1, 22, 5, 66, 3, 57);

function opachki($my_arr){
    sort($my_arr);
    foreach ($my_arr as $my_val){
        echo $my_val.", ";
    }
};
//opachki($my_arr);


//Не закончено!
function ogogoshenki($my_arr){
    $new_array = array();
    $arr_len = count($my_arr);
    for($i = 0; $i < $arr_len; $i++) {
        $temp = $my_arr[$i];

        for($j = 1; $j < $arr_len; $j++){
            if ($temp > $my_arr[$j]) {
                $temp = $my_arr[$j];
            }
        }
        $new_array[] = $temp;
    }
    foreach ($new_array as $my_val){
        echo $my_val.", ";
    }
};
ogogoshenki($my_arr);
