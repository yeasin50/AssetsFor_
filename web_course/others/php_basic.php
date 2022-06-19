<?php


// THis is single line comment

/*
This is multi-line comment 
*/

$name  = "amigo";
$txt = "Hello world!";
$x = 5;
$y = 10.5;
$z = $x + $y;
echo ".$txt. \n";

echo  "sum is .$z.";
echo (" <br>");



// find dataType 
echo ("dataType of .$x. is ");

var_dump($x);


print("<br>");
$car  = array("Volvo", "Rickshaw", 3, 3.3, 5.0);






echo ("<br>");

var_dump($car);


echo ("<br>");

$i = 0;

for ($i = 0; $i < count($car); $i++) {

    echo ($car[$i]);
    echo ("<br>");
}


$data = "Hello world!";

echo (" .$data. len <br>");
echo strlen($data); // outputs 12

echo ("<br>");

echo  str_word_count($data);

echo ("<br>");
echo  strrev($data);

echo ("<br>");
echo strpos($data, "world"); // outputs 6


?>