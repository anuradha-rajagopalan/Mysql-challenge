<?php
function findIntersection($arr1, $arr2) {
    return array_values(array_intersect($arr1, $arr2));
}

$arr1 = [1, 2, 3, 4, 5];
$arr2 = [4, 5, 6, 7, 8];

$result = findIntersection($arr1, $arr2);
echo "[" . implode(", ", $result) . "]";
?>
