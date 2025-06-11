<?php
function convertToJson($data) {
    return json_encode($data);
}

$data = [
    "name" => "John",
    "age" => 25,
    "address" => [
        "city" => "New York",
        "country" => "USA"
    ]
];

echo convertToJson($data);
?>
