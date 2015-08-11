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
    $new_array = $my_arr;
    $arr_len = count($new_array);
    for($i = 0; $i < $arr_len; $i++) {
        for($j = ($i + 1); $j < $arr_len; $j++){
            if ($new_array[$i] > $new_array[$j]) {
                $temp = $new_array[$j];
                $new_array[$j] = $new_array[$i];
                $new_array[$i] = $temp;
            }
        }
    }
    foreach ($new_array as $my_val){
        echo $my_val.", ";
    }
};
my_func($my_arr);
