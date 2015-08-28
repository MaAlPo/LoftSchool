<?php

$name = (string)$_GET["file"];
if(!unlink("files/".$name))echo "<h3>Удаление невозможно!</h3>";
else echo "<h3>Файл удалён успешно!</h3>";
echo "<h3><a href='main.php'>Вернуться на главную</a></h3>";