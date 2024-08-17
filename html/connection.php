<?php

// Create the database connection
$database = new mysqli("edoc_db", "root", "root", "edoc");

// Check for connection errors
if ($database->connect_error) {
    die("Connection failed: " . $database->connect_error);
}

?>

