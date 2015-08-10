<?php
$my_str = "qweq";
function opachki($my_str){
    $str_len = count($my_str);
    $j = $str_len-1;
    for($i = 0; $i <= $j; $i++, $j--){
        echo $my_str[$i]." = ".$my_str[$j]."<br/>";
        if($my_str[$i] != $my_str[$j]) return false;
    }
    return true;
};
if(opachki($my_str)) {echo "good!";}
else {echo "bad";}