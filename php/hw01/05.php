<?php
$my_arr = array(1, 22, 5, 66, 3, 57);

function st_func($my_arr){
    sort($my_arr);
    foreach ($my_arr as $my_val){
        echo $my_val.", ";
    }
    echo "<br/><br/>";
};
st_func($my_arr);

//Не закончено!
function my_func($my_arr){
    $new_array = array();
    $arr_len = count($my_arr);
    for($i = 0; $i < $arr_len; $i++) {
        $temp = $my_arr[$i];

        for($j = (i + 1); $j < $arr_len; $j++){
            if ($temp > $my_arr[$j]) {
                $temp2 = $my_arr[$j];
                $my_arr[$j] = $temp;
                $temp = $temp2;
            }
        }
        $new_array[] = $temp;
    }
    foreach ($new_array as $my_val){
        echo $my_val.", ";
    }
};
my_func($my_arr);
