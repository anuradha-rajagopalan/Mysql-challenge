<?php
function sortByKey($arr, $key) {
    usort($arr, function($a, $b) use ($key) {
        return $a[$key] <=> $b[$key];
    });
    return $arr;
}

$students = [
    ["name" => "Alice", "age" => 22],
    ["name" => "Bob", "age" => 20],
    ["name" => "Charlie", "age" => 25]
];

$sorted = sortByKey($students, "age");

foreach ($sorted as $student) {
    echo $student["name"] . " (" . $student["age"] . ")<br>";
}
?>
