<?php
function removeDuplicates($arr) {
    $result = [];
    foreach ($arr as $val) {
        if (!in_array($val, $result)) {
            $result[] = $val;
        }
    }
    return $result;
}

$input = [1, 2, 2, 3, 4, 4, 5];
$unique = removeDuplicates($input);
echo "[" . implode(", ", $unique) . "]";
?>
