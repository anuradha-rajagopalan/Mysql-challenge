<?php
function sumEachRow($matrix) {
    $sums = [];
    foreach ($matrix as $row) {
        $sums[] = array_sum($row);
    }
    return $sums;
}

$matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];

$result = sumEachRow($matrix);
echo "[" . implode(", ", $result) . "]";
?>
