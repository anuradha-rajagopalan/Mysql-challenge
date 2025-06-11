<?php
function mergeSortedArrays($arr1, $arr2) {
    $merged = array_merge($arr1, $arr2);
    sort($merged);
    return $merged;
}
print_r(mergeSortedArrays([1, 3, 5, 7], [2, 4, 6, 8]));
?>
