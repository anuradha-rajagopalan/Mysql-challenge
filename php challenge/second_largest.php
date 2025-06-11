<?php
function secondLargest($arr) {
    $arr = array_unique($arr);
    rsort($arr);
    return $arr[1];
}

$input = [10, 20, 5, 40, 25];
echo "Input: " . implode(", ", $input) . "<br>";
echo "Second Largest: " . secondLargest($input);
?>
