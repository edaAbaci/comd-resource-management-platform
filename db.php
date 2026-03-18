<?php
$host = "localhost";
$port = "3306";
$dbname = "your_database_name";
$user = "your_username";
$pass = "your_password";

try {
    $dsn = "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4";
    $db = new PDO($dsn, $user, $pass);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $ex) {
    echo "<p>Connection Error</p>";
    exit;
}