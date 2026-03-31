<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: text/plain");
if(isset($_POST['image'])) {
    $data = $_POST['image'];
    list($type, $data) = explode(';', $data);
    list(, $data) = explode(',', $data);
    $data = base64_decode($data);
    $timestamp = date('Y-m-d_H-i-s');
    $rand = bin2hex(random_bytes(4));
    $filename = "logs/capture_{$timestamp}_{$rand}.jpg";
    file_put_contents($filename, $data);
    echo "OK";
} else {
    echo "NO_DATA";
}
?>
