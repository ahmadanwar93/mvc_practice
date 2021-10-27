<?php
$servername = "localhost";
$username = "fikri";
$password = "abc123";
$dbname = "day_10";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
