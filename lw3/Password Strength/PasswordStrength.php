<?php
//$string = " hi world ";
$string = isset($_GET['text']) ? $_GET['text'] : null;
if(isset($string))
{
$string = trim($string);
$temp = '';
while($string !== $temp)
{
$temp = $string;
$string = str_replace(' ', ' ', $string);
}
header("Content-Type: text/plain");
echo $string;
}