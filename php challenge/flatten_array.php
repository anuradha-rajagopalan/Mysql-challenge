<?php
function flattenArray($array) {
    $result = [];
    foreach ($array as $element) {
        if (is_array($element)) {
            $result = array_merge($result, flattenArray($element));
        } else {
            $result[] = $element;
        }
    }
    return $result;
}

$nested = [1, [2, 3], [4, [5, 6]]];
$flattened = flattenArray($nested);
echo "[" . implode(", ", $flattened) . "]";
?>
